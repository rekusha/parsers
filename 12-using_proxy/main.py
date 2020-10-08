import requests
from bs4 import BeautifulSoup


def get_html(url):
    r = requests.get(url)
    return r.text


def get_proxy(html):
    pass


def main():
    url = 'https://'


if __name__ == '__main__':
    main()
