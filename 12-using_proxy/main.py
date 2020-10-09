import requests
from random import choice
from bs4 import BeautifulSoup


def get_html(url):
    r = requests.get(url)
    return r.text


def get_proxy():  # здесь получаю список прокси со своего ресурса (для тренировки использую не api и json а парсинг)
    res_list = []
    proxy_source = requests.get('http://192.168.0.223:55555/i/get/proxy/').text
    soup = BeautifulSoup(proxy_source, 'lxml').find('tbody').find_all('tr')
    for i in soup:
        data = i.find('td').text
        p_type = 'https' if data[:data.find(':')].startswith('socks') else 'http'
        res_list.append({'schema': p_type, 'address': data[data.find('//')+2:]})
    print(len(res_list))
    return res_list  # на выходе список словарей. у словарей ключ 'метод' значение 'ip:port'


def get_html(url):
    proxy = get_proxy()  # в переменную proxy получаем список словарей с прокси типом и адресами
    for i in range(100):
        p = choice(proxy)  # андомно выбираем 1 словарь из списка проксей
        proxy_locale = {p['schema']: p['address']}  # для наглядности создаем словарь из рандомно выбранного из списка
        try:
            r = requests.get(url, proxies=proxy_locale, timeout=5)  # делаем запрос к ресурсу через прокси из
            # proxy_locale с таймаутом 5 сек чтоб долго не тупило
            print(proxy_locale, ' ', r.json()['origin'])  # тут проводим проверку, выводя на печать инфу из словаря и
            # получает ответ от сервера. сервер работает только с http протоколом, поэтому https прокси будут выдавать
            # реальный а не подмененный адресс
        except:
            pass


def main():
    url = 'http://httpbin.org/ip'
    get_html(url)


if __name__ == '__main__':
    main()
