from config import username, password  # from config.py import username and password in string format
import requests
import hashlib
from bs4 import BeautifulSoup
from pprint import pprint


def get_html(url):
    r = requests.get(url)


def get_md5(ss):
    return hashlib.md5(bytes(ss, encoding='utf-8')).hexdigest()  #


def main():
    url = 'https://sevashoes.com/en/login'

    with requests.session() as session:  # поднятие сессии, потому как сайт использует сессии
        responce = session.get(url)

        # doChallengeResponse()
        # {str = document.login_form.username.value + ":"
        #           + hex_md5(document.login_form.password.value) + ":"
        #           + document.login_form.challenge.value;
        # document.login_form.password.value = "";
        # document.login_form.challenge.value = "";
        # document.login_form.response.value = hex_md5(str);
        # return false;}
        # на странице магазина данный скрипт формирует ключь для входа на сайт используемый при отправке рост запроса,
        # формируется данный ключ как видно из полей формы username + hex_md5(password) + challenge
        # при этом поде challenge является скрытым и формируется автоматически при гет запросе страницы

        user_name = username + ':'
        md5_pass = get_md5(password) + ':'
        challenge = BeautifulSoup(responce.text, 'lxml').find('input', id='challenge').get('value')  # парсим challenge

        # print(get_md5('red'))  # 'bda9643ac6601722a28f238714274da4' - проверка что функция работает правильно
        # возвращая хэш слова red представленной последовательностью символов

        result = get_md5(user_name + md5_pass + challenge)  # формируем ключь для пост запроса

        data = {'username': username,  # компонуем данные в словарь который будет отправлен с пост запросом
                'password': '',
                'challenge': '',
                'response': result
                }

        r_post = session.post(url, data=data)

        # pprint(r_post.text)  # выдать в консоль ответ запроса в сессии
        # with open('index.html', 'w', encoding='utf-8') as file:  # тоже самое что и ранее но с сохранением в файл
        #     file.write(r_post.text)

        # в этом месте мы осуществили авторизацию и получили доступ к ценам на продукцию, дальнейший парсинг происходить
        # как обычно, стоит лишь помнить что происходить все должно в пределах сессии

        data_soup = BeautifulSoup(r_post.text, 'lxml').find('div', class_='hidden-xs hidden-sm hidden-md visible-lg')
        table = data_soup.find_all('div', class_='col-xs-4')
        for i in table:
            try:
                row = i.find_all('div')
                model_name = row[0].text + ' ' + row[1].text
                model_price = row[2].text[row[2].text.find('€')+1:row[2].text.find('.')+2]+'€'
                # if model_name is None and model_price is None:
                #     continue
                print(model_name, model_price)
            except:
                pass


if __name__ == '__main__':
    main()