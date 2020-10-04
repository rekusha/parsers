import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    r = requests.get(url)
    return r.text


def write_csv(data):
    with open('cmc.csv', 'a') as f:
        writer = csv.writer(f)
        writer.writerow([data['name'], data['symbol'], data['url'], data['price']])  # преобразовали в один объект
        # и записали ряд в файл


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')

    trs = soup.find('tbody', class_='rc-table-tbody').find_all('tr',
                                                               class_='rc-table-row rc-table-row-level-0 cmc-table-row')
    for tr in trs:
        tds = tr.find_all('td')  # озвращает список всех найденных td
        name = tds[2].find_all('p')[0].text  # берем третий по порядку 'td' и извлекаем из него текст первого тега 'p'
        symbol = tds[2].find_all('p')[1].text  # берем третий по порядку 'td' и извлекаем из него текст второго тега 'p'
        url = 'https://coinmarketcap.com' + tds[2].find('a').get('href')
        price = tds[3].find('a').text.replace('$', '').replace(',', '')  # берем четвертый по порядку 'td' и извлекаем
        # из него текст первого тега 'а', и сразу форматируем его в нужному нам виду
        data = {  # сделали словарик из ранее найденных данных
            'name': name,
            'symbol': symbol,
            'url': url,
            'price': price,
        }
        write_csv(data)  # передали словарик в функцию для записи в файл


def main():
    url = 'https://coinmarketcap.com'
    get_page_data(get_html(url))


if __name__ == '__main__':
    main()
