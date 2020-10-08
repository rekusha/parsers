import requests
import csv


def csv_writer(data):
    order = ['videoId', 'title', 'viewCountText']
    with open('datafile.csv', 'a', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


def get_page_data(url):
    headers = {
        "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 "
                      "Safari/537.36",
        'x-youtube-client-name': '1',
        'x-youtube-client-version': '2.20200429.03.00',
    }
    token_page = requests.get(url, headers=headers)
    next_data_token = token_page.text.split('"nextContinuationData":{"continuation":"')[1].split('","')[0]
    sleep = False  # пока есть токен - крутим цикл

    while not sleep:
        service = 'https://www.youtube.com/browse_ajax'
        params = {
            "ctoken": next_data_token,
            "continuation": next_data_token
        }
        r = requests.post(service, params=params, headers=headers)
        r_json = r.json()[1]
        r_json_response = r_json['response']

        data_container = r_json_response["continuationContents"]['gridContinuation']

        try:  # ищем токен
            next_data_token = data_container["continuations"][0]["nextContinuationData"]["continuation"]
        except KeyError:  # токен не найден. собираем оставшийся контент
            sleep = True

        for content in data_container['items']:
            video_id = content['gridVideoRenderer']['videoId']
            title = content['gridVideoRenderer']['title']['runs'][0]['text']
            view_count_text = ''.join(content['gridVideoRenderer']['viewCountText']['simpleText'].split()[0:-1])
            res_dict = {'videoId': video_id, 'title': title, 'viewCountText': view_count_text}
            csv_writer(res_dict)


def main():
    url = 'https://youtube.com/c/iKakProsto2/videos'
    get_page_data(url)


if __name__ == '__main__':
    main()
