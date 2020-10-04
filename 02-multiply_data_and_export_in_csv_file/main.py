import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    r = requests.get(url)
    return r.text


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')
    # popular = soup.find_all('section')  # получим объект класса 'bs4.element.ResultSet' - список с доп свойствами и
    # методами содержащий в себе список с данными со всеми разделами 'section'
    popular = soup.find_all('section')  # получаем список участков кода 'section'
    popular = popular[3]  # из списка получаем данные 4го элемента - "Popular Plugins" с сайта url
    plugins = popular.find_all('article')  # из полученной ранее секции получаем список элементов 'article'

    for plugin in plugins:  # в цикле обходим поэлементно список 'article'
        name = plugin.find('h3').text  # получаем имя содержащееся в тексте элемента 'h3'
        url = plugin.find('h3').find('a').get('href')  # получаем url содержащийся в 'h3' -> 'a' -> get('href')
        rating = plugin.find('span', class_='rating-count').find('a').text  # получаем rating из элемента 'span' с
        # классом class_='rating-count', элемнт 'a'
        rating = refined(rating)  # очищаем текст переменной rating до требуемых нам значений с помощью функции refined

        data = {'name': name,  # создаем словарь с ключами и значениями 'name': name, 'url': url, 'reviews': rating
                'url': url,
                'reviews': rating,
                }

        write_csv(data)  # передаем словарь с данными функции write_csv


def write_csv(data):  # функция для записи полученных данных в csv файл
    with open('plugins.csv', 'a') as f:  # окрываем файл с именем 'plugins.csv' в режиме 'а' (append)
        writer = csv.writer(f)  # создаем врайтера для файла f

        writer.writerow([data['name'],  # writerow принимает 1 элемент поэтому преобразовываю словарь в список
                         data['url'],
                         data['reviews'],
                         ])


def refined(s):  # функция для очистки строки от ненужного.
    # x,xxx total ratings
    # xxxx
    return s.split(' ')[0].replace(',', '').replace('\n', '')


def main():
    url = 'https://wordpress.org/plugins/'
    get_data(get_html(url))


if __name__ == '__main__':
    main()
