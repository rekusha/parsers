import requests
import csv
from bs4 import BeautifulSoup
import re


def csv_writer(data):
    with open('data.csv', 'a', newline='', encoding='utf-8') as f:
        field = ['author', 'data_since']
        writer = csv.DictWriter(f, fieldnames=field)
        writer.writerow(data)


def get_html(url):
    user_agent = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                                'Chrome/85.0.4183.121 Safari/537.36'}
    r = requests.get(url, headers=user_agent)  # requests умеет отправлять заголовки и сейчас заголовок с указанием
    # юзерагента необходим, потому как буз него сайт не принимает запросы
    return r.text


def get_articles(html):
    soup = BeautifulSoup(html, 'lxml')
    ts = soup.find('div', class_=re.compile(' testimonial-container$')).find_all('article')
    return ts


def get_page_data(ts):
    for i in ts:
        try:
            data_since = i.find('p', class_='traxer-since').text.strip()
        except():
            data_since = 'N/A'
        try:
            author = i.find('p', class_='testimonial-author').text.strip()
        except():
            author = 'N/A'

        data = {'author': author, 'data_since': data_since}
        csv_writer(data)


def main():
    page = 1
    while True:
        url = 'https://catertrax.com/why-catertrax/traxers/page/{}/'.format(str(page))
        articles = get_articles(get_html(url))
        if articles:
            get_page_data(articles)
            print(page)
            page += 1
        else:
            break


if __name__ == '__main__':
    main()
