from bs4 import BeautifulSoup
import re


def get_data():
    pass


def main():
    with open('index.html', encoding='utf-8') as file:
        soup = BeautifulSoup(file, 'lxml')
    print(soup.find('div', class_='row'))
    print('!!!!!!!')
    print(soup.find('div', {'data-set': 'salary'}))
    print('!!!!!!!')
    print(soup.find('div', text='Alena').parent)
    print('!!!!!!!')
    print(soup.find('div', text='Alena').find_parent(class_='row'))
    print('!!!!!!!')
    copywriters = []
    persons = soup.find_all('div', class_='row')  # получаем список однотипных объектов
    for person in persons:  # пропускаем все однотипные объекты по циклу
        cw = get_copywriter(person)  # объект пропускаем через фильтрующую функци которая ищет заданный параметр
        if cw is not None:  # если параметры фильтра удовлетворены, добавить объекст в список
            copywriters.append(cw)
    print(copywriters)
    print('!!!!!!!')
    # поиск с помощью фильтров и возврат очищенной строки
    salary = soup.find_all('div', {'data-set': 'salary'})
    for i in salary:
        print(get_salary(i.text))
    print('-------')
    # поиск с условием наличия определенных данных в строке
    salary = soup.find_all('div', text=re.compile('\d{1,9}'))
    for i in salary:
        print(i.text)
    print('!!!!!!!')


def get_salary(text):
    # salary: 2700 usd per month
    pattern = r'\d{1,9}'
    # salary = re.findall(pattern, text)[0]
    salary = re.search(pattern, text).group()
    return salary


def get_copywriter(tag):  # фильтрующая функция
    whois = tag.find('div', id='whois').text.strip()
    if 'Copywriter' in whois:
        return tag
    return None


if __name__ == '__main__':
    main()

# tag, atributes - редпочтительная форма записи атрибутов поиска словарь ('tag', {'class': 'row', 'href': 'link'})
# .find('tag', 'atributes') - ищет первый попавшийся тег соответствующий условиям поиска
# .find_all('tag', 'atributes) - ищет все теги соответствующий условиям поиска

# .parent - позволяет получить содержание всего родителя найденого блока .find('div', text='Alena').parent
# .find_parent(class_ = 'row') - позволяет получить содержание определенного родителя найденого блока с классом 'row'

# .find_next_sibling()
# .find_previous_sibling()
# поиск родственных тегов <table> <tr>1</tr> <tr>2</tr> <tr>3</tr> <tr>4</tr> </table> - зацепившись за tr1 можем
# перемещаться по tr next(вперед), previous(назад)

# re.findall(pattern, text) - поиск pattern в text
# re.search(pattern, text).group() - то же что и предидущее
# re.compile('\d{1,9}') - ищет по паттерну возвращая true если таттерн найден (\d - число, {1,9} от одного до 9 подряд)
#
# ^ - начало строки
# $ - конец строки
# . - любой символ
# + - неограниченное количество вхождений
# '\d' - цифра
# '\w' - буквы, цифры, знаки нижнего подчеркивания
#
# ^@\w+ - @twitter
# ^\w+@\w+.\w{1,5} - rekusha@gmail.com
