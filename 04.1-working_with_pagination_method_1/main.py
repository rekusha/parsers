import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    r = requests.get(url)
    if r.ok:  # если сервер ответил 200 то ок, иначе жопа
        return r.text
    else:
        return print('!!!' + str(r.status_code) + '!!!')


def write_csv(data):
    with open('ecatalogtv.csv', 'a', newline='') as f:
        writer = csv.writer(f)
        writer.writerow([data['name'], data['diagonal'], data['resolution'], data['price_min'], data['price_max']])


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    table = soup.find('td', class_='main-part-content')
    all_goods = table.find_all('div', class_='model-short-div list-item--goods')
    for good in all_goods:
        try:
            name = good.find('span', class_='u').text.strip()
        except():
            name = 'Unknown'

        try:
            other_param = string_cleaner(good.find('div', class_='m-s-f2 no-mobile').find('div').text.strip())
            # [0] - diagonal, # [1] - resolution
        except():
            other_param = ('Unknown', 'Unknown')

        try:
            tmp_price = good.find('div', class_='model-price-range').find_all('span')
            price = price_cleaner(tmp_price)
            # [0] - min price, # [1] - max price
        except():
            price = ('Unknown', 'Unknown')

        data = {
            'name': name,
            'diagonal': other_param[0],
            'resolution': other_param[1],
            'price_min': price[0],
            'price_max': price[1],
        }
        write_csv(data)


def string_cleaner(data):
    x = data.replace('Экран:', '').split()
    result = [x[0].strip(), x[2].strip()]
    return result


def price_cleaner(price_raw):
    data1 = ''.join(e for e in price_raw[0].text if e.isalnum())
    data2 = ''.join(e for e in price_raw[1].text if e.isalnum())
    return data1, data2


def main():
    pattern = 'https://ek.ua/list/160/{}/'
    for i in range(0, 5):
        url = pattern.format(str(i))
        get_page_data(get_html(url))


if __name__ == '__main__':
    main()
