# XHR запросы отдают чистый текст без хтмл кода, поэтому bs4 не нужен просто обрабатываем ответ сервера как строки

import requests
import csv


def get_html(url):
    return requests.get(url).text


def write_csv(data):
    with open('sites.csv', 'a', newline='', encoding='utf-8') as f:
        order = ['name', 'url', 'description', 'traffic', 'percent']
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


def main():
    for i in range(1, 6286):
        url = 'https://www.liveinternet.ru/rating/ru//today.tsv?page={}'  # урл по запросу на который вернется текст
        response = get_html(url.format(i))  # в url одставляется i вместо фигурных скобок (.формат)
        data = response.strip().split('\n')[1:]  # чистим строку с концов от спец символов и мусора, делим по переходам
        # строк '\n' и отбрасываем первый элемент списка [1:]
        for row in data:  # в цикле прокручиваем весь список
            column = row.strip().split('\t')  # делим каждую строку на составные части по признаку символа табуляции
            name = column[0]
            url = column[1]
            description = column[2]
            traffic = column[3]
            percent = column[4]

            data = {'name': name,  # создаем словарь с нужными полями и данными для записи в csv
                    'url': url,
                    'description': description,
                    'traffic': traffic,
                    'percent': percent}

            write_csv(data)  # отправляем словарь в csv для записи


if __name__ == '__main__':
    main()
