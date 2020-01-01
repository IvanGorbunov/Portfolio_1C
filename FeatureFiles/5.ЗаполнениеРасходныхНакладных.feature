#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

	И В командном интерфейсе я выбираю 'Учет товаров' 'Расходная накладная'
	Тогда открылось окно 'Расходная накладная'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Расходная накладная (создание)'
	И в поле 'от' я ввожу текст '10.01.2020  0:00:00'
	И я перехожу к следующему реквизиту
	Тогда открылось окно 'Расходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Организация"
	Тогда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Расходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля "Контрагент"
	Тогда открылось окно 'Контрагенты'
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Расходная накладная (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Договор"
	Тогда открылось окно 'Договоры'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Расходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я нажимаю на кнопку с именем 'СписокНоменклатурыДобавить'
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Расходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле с именем "СписокНоменклатурыДоговор"
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Договор"
	Тогда открылось окно 'Договоры'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Расходная накладная (создание) *'
	И в таблице "СписокНоменклатуры" я активизирую поле "Количество"
	И в таблице "СписокНоменклатуры" в поле 'Количество' я ввожу текст '10'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" в поле 'Цена' я ввожу текст '250,00'
	И я перехожу к следующему реквизиту
	И в таблице "СписокНоменклатуры" я активизирую поле с именем "СписокНоменклатурыДоговор"
	И в таблице "СписокНоменклатуры" я нажимаю кнопку выбора у реквизита "Договор"
