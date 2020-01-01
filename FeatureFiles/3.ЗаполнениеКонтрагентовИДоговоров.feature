#language: ru

Функционал: Заполнение контрагентов и договоров

Как Программист
Я хочу Выполнить первоначальное заполнение базы данных
Чтобы Протестировать функционал программы

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Заполнение контрагентов и договров

	И В командном интерфейсе я выбираю 'Учет товаров' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование |
		| 000000002 | Поставщики   |
	И в таблице  "Список" я перехожу на один уровень вниз
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Контрагенты (создание)'
	И в поле 'Наименование' я ввожу текст 'Поставщик № 1'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Договоры'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'OK'
	Тогда открылось окно 'Поставщик № * (Контрагенты)'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Договоры (создание)'
	И в поле 'Наименование' я ввожу текст 'Договор поставки № 1'
	И я нажимаю кнопку выбора у поля "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку
	И в поле 'Процент' я ввожу текст '30'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Договоры (создание) *' в течение 20 секунд
	Тогда открылось окно 'Поставщик № * (Контрагенты)'
	И я нажимаю на кнопку с именем 'ФормаСкопировать'
	Тогда открылось окно 'Договоры (создание)'
	И в поле 'Наименование' я ввожу текст 'Договор поставки № 2'
	И в поле 'Процент' я ввожу текст '40'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Договоры (создание) *' в течение 20 секунд
	Тогда открылось окно 'Поставщик № * (Контрагенты)'
	И я нажимаю на кнопку с именем 'ФормаСкопировать'
	Тогда открылось окно 'Договоры (создание)'
	И в поле 'Наименование' я ввожу текст 'Договор поставки № 3'
	И в поле 'Процент' я ввожу текст '50'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Договоры (создание) *' в течение 20 секунд
	Тогда открылось окно 'Поставщик № * (Контрагенты)'
	И Я закрываю окно 'Поставщик № * (Контрагенты)'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Контрагенты (создание)'
	И в поле 'Наименование' я ввожу текст 'Поставщик № 2'
	И я нажимаю на кнопку 'Записать'
	Тогда открылось окно 'Поставщик № * (Контрагенты)'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Договоры'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Договоры (создание)'
	И в поле 'Наименование' я ввожу текст 'Договор поставки № 21'
	И я нажимаю кнопку выбора у поля "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку
	И в поле 'Процент' я ввожу текст '13'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Договоры (создание) *' в течение 20 секунд
	Тогда открылось окно 'Поставщик № * (Контрагенты)'
	И я нажимаю на кнопку с именем 'ФормаСкопировать'
	Тогда открылось окно 'Договоры (создание)'
	И в поле 'Наименование' я ввожу текст 'Договор поставки № 22'
	И в поле 'Процент' я ввожу текст '15'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Договоры (создание) *' в течение 20 секунд
	Тогда открылось окно 'Поставщик № * (Контрагенты)'
	И я нажимаю на кнопку с именем 'ФормаСкопировать'
	Тогда открылось окно 'Договоры (создание)'
	И в поле 'Наименование' я ввожу текст 'Договор поставки № 23'
	И в поле 'Процент' я ввожу текст '25'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Договоры (создание) *' в течение 20 секунд
	Тогда открылось окно 'Поставщик № * (Контрагенты)'
	И Я закрываю окно 'Поставщик № * (Контрагенты)'
