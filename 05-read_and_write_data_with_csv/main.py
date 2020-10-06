import csv


def main():
    d = {'name': 'Alex', 'surename': 'Alexa', 'age': 21}
    d1 = {'name': 'Ivan', 'surename': 'Ivana', 'age': 22}
    d2 = {'name': 'Gal', 'surename': 'Gala', 'age': 23}
    lll = [d, d1, d2]
    for i in lll:
        write_csv(i)
        write_csv2(i)

    with open('data.csv') as file:
        fieldnames = ['Coin_name', 'Coin_price', 'Coin_url']  # задаем любой итерируемый формат для порядка полей
        reader = csv.DictReader(file, fieldnames=fieldnames)  # создаем читателя из файла с указанием порядка полей
        # на выходе получим упорядоченный формат данных например упорядоченный словарь с ключами:значениями указынными
        # в порядке fieldnames
        for row in reader:
            print(row)


def write_csv(data):
    with open('names.csv', 'a', newline='') as file:
        writer = csv.writer(file)
        writer.writerow((data['name'], data['surename'], data['age']))


def write_csv2(data):
    with open('names2.csv', 'a', newline='') as file:
        order = ['name', 'surename', 'age']  # задаем любой итерируемый формат для порядка полей
        writer = csv.DictWriter(file, fieldnames=order)  # создаем писателя в файл с указанием порядка полей
        writer.writerow(data)


if __name__ == '__main__':
    main()
