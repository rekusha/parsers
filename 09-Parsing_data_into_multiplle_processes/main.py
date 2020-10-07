import requests
import csv
from multiprocessing import Pool  # импорт мультипроцессинга
# from time import sleep  # позволяет делать паузы при выполнении


def get_html(url):
    # sleep(1) - пауза в 1 сек перед запросом
    return requests.get(url).text


def write_csv(data):
    with open('sites.csv', 'a', newline='', encoding='utf-8') as f:
        order = ['name', 'url', 'description', 'traffic', 'percent']
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


def get_page_data(text):
    data = text.strip().split('\n')[1:]

    for row in data:
        column = row.strip().split('\t')
        name = column[0]
        url = column[1]
        description = column[2]
        traffic = column[3]
        percent = column[4]

        data = {'name': name,
                'url': url,
                'description': description,
                'traffic': traffic,
                'percent': percent}
        write_csv(data)


def make_all(url):  # функция объединяющая get_page_data() и get_html() в одну, для дальнейшего маппинга
    text = get_html(url)
    get_page_data(text)


def main():
    url = 'https://www.liveinternet.ru/rating/ru//today.tsv?page={}'
    urls = [url.format(str(i)) for i in range(1, 6510)]

    with Pool(20) as p:
        p.map(make_all, urls)


if __name__ == '__main__':
    main()
