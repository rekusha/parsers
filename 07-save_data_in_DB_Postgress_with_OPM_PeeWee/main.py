from bs4 import BeautifulSoup
import csv
from peewee import *

db = PostgresqlDatabase(database='molchanov_7', user='postgres', password='Password123', host='localhost')


class Coin(Model):  # создали класс данных для БД в три поля
    name = CharField()  # поле имени монеты с типом чарфилд длинной 250 символов
    url = TextField()  # текстовое поле для ссылки хттп
    price = CharField()  # чарфилд для цены (можно иной тип типа FloatField но пока как текст)

    class Meta:  # класс для связывания с БД
        database = db


def main():
    db.connect()  # соединение с БД
    db.create_tables([Coin])  # создание таблиц в БД (передается итерируемый объект со списком таблиц)

    with open('data.csv', encoding='utf-8') as f:
        order = ['name', 'price', 'url']  # поля должны совпадать с полями БД!!! обязательно
        reader = csv.DictReader(f, fieldnames=order)

        coins = list(reader)

        # первый способ записи в БД. самый очевидный но плохой потому как сильно грузит ХДД
        # for row in coins:
        #     coin = Coin(name=row['name'], url=row['url'], price=row['price'])
        #     coin.save()

        # # второй способ записи в БД. используется при парсинге "на лету"
        # with db.atomic():
        #     for row in coins:
        #         Coin.create(**row)
        #         # * - функция получает неограниченный вывод позиционных аргументов (список)
        #         # ** - функция получает неограниченный вывод именованных аргументов
        #         # {'key1': 'value1', 'key2': 'value2', 'key3': 'value3'} (словарь)

        # третий способ записи в БД. хорош когда есть объект с уже всеми данными, а не парсинг "на лету".
        # ложит в бд объекты порциями
        with db.atomic():
            for index in range(0, len(coins), 100):
                Coin.insert_many(coins[index:index + 100]).execute()


if __name__ == '__main__':
    main()

# результатом выполнения "pg_dump -U postgres -h localhost molchanov_7 > dump.sql" станет файл dump.sql который будет
# дампом БД для передачи его заказчику
