import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    return requests.get(url).text


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')
    pass


def main():
    url = 'https://google.com/'
    get_data(get_html(url))


if __name__ == '__main__':
    main()
