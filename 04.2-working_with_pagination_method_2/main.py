import requests
from bs4 import BeautifulSoup
import csv
import re


def get_html(url):
    r = requests.get(url)
    if r.ok:
        return r.text
    else:
        print(r.status_code)
        return -1


def write_cvs(data):
    with open('data.csv', 'a', newline='', encoding='utf-8') as f:  # уточнение кодировки файла для всеядности кодировок
        writer = csv.writer(f)
        writer.writerow([data['name'], data['price'], 'https://www.coingecko.com' + data['url']])


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('tbody').find_all('tr')
    for i in trs:
        tds = i.find_all('td')
        try:
            name = i.find('td', class_='py-0 coin-name').get('data-sort')
        except():
            name = ''

        try:
            url = i.find('td', class_='p-0 pl-2 text-center').find('a').get('href')
        except():
            url = ''

        try:
            price = tds[3].find('span').text.replace('$', '').replace(',', '')
        except():
            price = ''

        data = {
            'name': name,
            'url': url,
            'price': price,
        }
        write_cvs(data)


def main():
    url = 'https://www.coingecko.com{}'
    next_url = ''
    while True:
        # print(url.format(next_url))
        get_page_data(get_html(url.format(next_url)))
        try:
            soup = BeautifulSoup(get_html(url.format(next_url)), 'lxml')
            try:
                pattern = 'Next'  # задаем паттерн поиска для регулярного выражения
                next_url = soup.find('ul', class_='pagination').find('a', text=re.compile(pattern)).get('href')  # с
                # помощью регулярного выражения ищем "кнопку" Next и получаем из нее параметр href
                if next_url == '#':  # уточняющее условие прерывания цикла при получении в ссылке резутьтатом знак '#'
                    break
            except():
                break
        except():
            print('!!!')
            get_page_data(get_html(url.format(next_url)))


if __name__ == '__main__':
    main()
