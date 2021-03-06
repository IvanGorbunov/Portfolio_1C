#language: ru

Функционал: Заполнение расходов денег

Как Программист
Я хочу Выполнить первоначальное заполнение базы данных
Чтобы Протестировать функционал программы

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Заполнение расходов денег

	Когда В панели разделов я выбираю 'Учет товаров'
	И В командном интерфейсе я выбираю 'Бухгалтерский учет' 'Расход денег'
	Тогда открылось окно 'Расход денег'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Расход денег (создание)'
	И в поле 'от' я ввожу текст '31.01.2020  0:00:00'
	И я перехожу к следующему реквизиту
	Тогда открылось окно 'Расход денег (создание) *'
	И я нажимаю кнопку выбора у поля "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Расход денег (создание) *'
	И я нажимаю кнопку выбора у поля "Контрагент"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование |
		| 000000002 | Поставщики   |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование  |
		| 000000005 | Поставщик № 1 |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Расход денег (создание) *'
	
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| Код | Наименование    |
		| 1   | 'Big (капилярная)' |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "СписокНоменклатуры" я активизирую поле "Договор"
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Договор"
	Тогда открылось окно 'Договоры'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование         |
		| 000000004 | Договор поставки № 1 |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '6'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '123,00'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Сумма выплаты' я ввожу текст '366,00'
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки

	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	И в таблице "Список" я перехожу к строке:
		| Код | Наименование    |
		| 2   | 'Паркер "Golg"' |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "СписокНоменклатуры" я активизирую поле "Договор"
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Договор"
	Тогда открылось окно 'Договоры'
	И в таблице "Список" я перехожу к строке:
		| Код       | Наименование         |
		| 000000004 | Договор поставки № 1 |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '29'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '199,00'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Сумма выплаты' я ввожу текст '1757,40'
	И в таблице "СписокНоменклатуры" я завершаю редактирование строки
	
	И я нажимаю на кнопку 'Записать'
	И я нажимаю на кнопку 'Провести'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Продажи'