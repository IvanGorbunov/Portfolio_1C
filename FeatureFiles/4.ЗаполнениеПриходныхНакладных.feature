#language: ru

Функционал: Заполнение приходных накладных

Как Программист
Я хочу Выполнить первоначальное заполнение базы данных
Чтобы Протестировать функционал программы

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Заполнение приходных накладных

	И В командном интерфейсе я выбираю 'Учет товаров' 'Приходная накладная'
	Тогда открылось окно 'Приходная накладная'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Приходная накладная (создание)'
	И в поле 'от' я ввожу текст '01.01.2020  0:00:00'
	И я перехожу к следующему реквизиту
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Контрагент"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование |
		| 000000002 | Поставщики   |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Договор"
	Тогда открылось окно 'Договоры'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование          |
		| 000000004 | Договор поставки № 1  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '3'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '123,00'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| Код | Наименование    |
		| 2   | 'Паркер "Golg"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '15'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '199,00'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки
	И я нажимаю на кнопку 'Записать'
	Тогда открылось окно 'Приходная накладная * от *'
	И я нажимаю на кнопку 'Провести'
	Тогда открылось окно 'Приходная накладная * от *'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Остатки номенклатуры'


	И В командном интерфейсе я выбираю 'Учет товаров' 'Приходная накладная'
	Тогда открылось окно 'Приходная накладная'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Приходная накладная (создание)'
	И в поле 'от' я ввожу текст '02.01.2020  0:00:00'
	И я перехожу к следующему реквизиту
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Контрагент"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование |
		| 000000002 | Поставщики   |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Договор"
	Тогда открылось окно 'Договоры'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование          |
		| 000000004 | Договор поставки № 1  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '3'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '123,00'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| Код | Наименование    |
		| 2   | 'Паркер "Golg"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '15'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '199,00'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки
	И я нажимаю на кнопку 'Записать'
	Тогда открылось окно 'Приходная накладная * от *'
	И я нажимаю на кнопку 'Провести'
	Тогда открылось окно 'Приходная накладная * от *'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Остатки номенклатуры'
	
	
	И В командном интерфейсе я выбираю 'Учет товаров' 'Приходная накладная'
	Тогда открылось окно 'Приходная накладная'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Приходная накладная (создание)'
	И в поле 'от' я ввожу текст '10.01.2020  0:00:00'
	И я перехожу к следующему реквизиту
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Контрагент"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование |
		| 000000002 | Поставщики   |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Договор"
	Тогда открылось окно 'Договоры'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование          |
		| 000000005 | Договор поставки № 2  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '3'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '123,45'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| Код | Наименование    |
		| 2   | 'Паркер "Golg"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '15'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '199,05'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки
	И я нажимаю на кнопку 'Записать'
	Тогда открылось окно 'Приходная накладная * от *'
	И я нажимаю на кнопку 'Провести'
	Тогда открылось окно 'Приходная накладная * от *'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Остатки номенклатуры'
	
	
	И В командном интерфейсе я выбираю 'Учет товаров' 'Приходная накладная'
	Тогда открылось окно 'Приходная накладная'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Приходная накладная (создание)'
	И в поле 'от' я ввожу текст '10.01.2020  0:00:00'
	И я перехожу к следующему реквизиту
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Контрагент"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование |
		| 000000002 | Поставщики   |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование  |
		| 000000006 | Поставщик № 2 |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Договор"
	Тогда открылось окно 'Договоры'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование          |
		| 000000008 | Договор поставки № 22 |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| Код | Наименование    |
		| 2   | 'Паркер "Golg"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '3'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '123,00'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| Код | Наименование    |
		| 3   | 'Шариковая обычная' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '15'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '179,99'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки
	И я нажимаю на кнопку 'Записать'
	Тогда открылось окно 'Приходная накладная * от *'
	И я нажимаю на кнопку 'Провести'
	Тогда открылось окно 'Приходная накладная * от *'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Остатки номенклатуры'