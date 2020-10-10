import requests
from bs4 import BeautifulSoup
import re
import csv
from time import sleep


def write_csv(data):
    fields = ['game_id', 'game_title', 'released', 'reviews', 'reviews_num', 'link', 'tags']
    with open('gamelist.csv', 'a', newline='', encoding='utf-8') as file:
        writer = csv.DictWriter(file, fieldnames=fields)
        writer.writerow(data)


def get_all_pages(url):
    start = 0
    count = 30
    while True:
        try:
            pos = BeautifulSoup((requests.get(url.format(start, count)).json())['results_html'], 'lxml').find_all('a')
            if pos:
                get_page_data(requests.get(url.format(start, count)).json())
                start += count
            else:
                break
        except:
            break


def get_page_data(text):
    soup = BeautifulSoup(text['results_html'], 'lxml').find_all('a')
    for i in soup:
        get_game_data(i)


def get_game_data(soup):
    sleep(0.3)
    try:
        game_id = soup.get('data-ds-appid').strip()
    except:
        game_id = 'N/A'
    try:
        game_title = soup.find('span', class_="title").text
    except:
        game_title = 'N/A'
    game_info = BeautifulSoup(requests.get('https://store.steampowered.com/apphover/{}'.format(game_id)).text, 'lxml')
    try:
        released = game_info.find('div', class_='hover_release').find('span').text
    except:
        released = 'N/A'
    try:
        reviews_num = ''.join(re.findall(r'\d+', game_info.find('div', class_='hover_review_summary').text))
    except:
        reviews_num = 'N/A'
    try:
        reviews = game_info.find('span', class_=re.compile('game_review_summary')).text.strip()
    except:
        reviews = 'N/A'
    tags = []

    try:
        for i in game_info.find_all('div', class_='app_tag'):
            tags.append(i.text)
    except:
        pass

    link = 'https://store.steampowered.com/app/' + game_id

    write_csv({'game_id': game_id,
               'game_title': game_title,
               'released': released,
               'reviews': reviews,
               'reviews_num': reviews_num,
               'link': link,
               'tags': tags})


def main():
    url = 'https://store.steampowered.com/search/results/?query&start={}&count={}&infinite=1'
    get_all_pages(url)


if __name__ == '__main__':
    main()
