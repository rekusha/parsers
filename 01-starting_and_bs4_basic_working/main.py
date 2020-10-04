import requests
from bs4 import BeautifulSoup


def get_html(url):
    r = requests.get(url)  # запрос страницы по адресу url, на выходе объект типа 'requests.models.Response'
    if r.ok:
        pass
    return r.text


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')  # создание объекта BeautifulSoup с 'html' данными и парсером 'lxml'
    h1 = soup.find('div', id='home-welcome').find('header').find('h1').text  # в объекте bs4 получаем все внутри тэга
    # 'div' и ид id='home-welcome', после чего в результате получаем объект bs4 в нем же ищем содержимое внутри тэга
    # 'header', получаем объек bs4 и в нем же ищем содержимое внутри тэга 'header', получаем объек bs4, а уже из этого
    # объекта извлекаем содержимое в формат строки .text
    return h1


def main():
    url = 'https://wordpress.org'
    print(get_data(get_html(url)))


if __name__ == '__main__':
    main()
