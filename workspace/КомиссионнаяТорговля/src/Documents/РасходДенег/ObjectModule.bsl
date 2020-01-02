
Процедура ОбработкаПроведения(Отказ, Режим)
	
	Движения.Продажи.Записать();
		
	// 1. Получение данных
	Запрос = Новый Запрос;
	Запрос.МенеджерВременныхТаблиц = Новый МенеджерВременныхТаблиц;
	Запрос.Текст = 
		"ВЫБРАТЬ РАЗРЕШЕННЫЕ
		|	РасходДенегСписокНоменклатуры.Номенклатура КАК Номенклатура,
		|	РасходДенегСписокНоменклатуры.Договор КАК ДоговорКомиссии,
		|	СУММА(РасходДенегСписокНоменклатуры.Количество) КАК Количество,
		|	СУММА(РасходДенегСписокНоменклатуры.Сумма) КАК Сумма,
		|	СУММА(РасходДенегСписокНоменклатуры.СуммаВыплаты) КАК СуммаВыплаты
		|ПОМЕСТИТЬ ВТТовары
		|ИЗ
		|	Документ.РасходДенег.СписокНоменклатуры КАК РасходДенегСписокНоменклатуры
		|ГДЕ
		|	РасходДенегСписокНоменклатуры.Ссылка = &Ссылка
		|
		|СГРУППИРОВАТЬ ПО
		|	РасходДенегСписокНоменклатуры.Номенклатура,
		|	РасходДенегСписокНоменклатуры.Договор
		|
		|ИНДЕКСИРОВАТЬ ПО
		|	Номенклатура,
		|	ДоговорКомиссии
		|;
		|
		|////////////////////////////////////////////////////////////////////////////////
		|ВЫБРАТЬ
		|	ВТТовары.Номенклатура КАК Номенклатура,
		|	ВТТовары.ДоговорКомиссии КАК ДоговорКомиссии,
		|	ВТТовары.Количество КАК Количество,
		|	ВТТовары.Сумма КАК Сумма,
		|	ВТТовары.СуммаВыплаты КАК СуммаВыплаты
		|ИЗ
		|	ВТТовары КАК ВТТовары";
	Запрос.УстановитьПараметр("Ссылка", Ссылка);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	// 2. Формирование набора записей
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
		
		Движение = Движения.Продажи.Добавить();
		Движение.ВидДвижения  = ВидДвиженияНакопления.Расход;
		Движение.Период       = Дата;
		Движение.Организация  = Организация;
		Движение.Номенклатура = ВыборкаДетальныеЗаписи.Номенклатура;
		Движение.Договор      = ВыборкаДетальныеЗаписи.ДоговорКомиссии;
		Движение.Количество   = ВыборкаДетальныеЗаписи.Количество;
		Движение.Сумма        = ВыборкаДетальныеЗаписи.Сумма;
		Движение.СуммаВыплаты = ВыборкаДетальныеЗаписи.СуммаВыплаты;
		
	КонецЦикла; 
	
	// 3. Установка блокировок
	// 4. Запись всех наборов
	Движения.Продажи.Записывать = Истина;
	Движения.Продажи.БлокироватьДляИзменения = Истина;
	Движения.Записать();
	
	// 5. Контроль данных
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	ПродажиОстатки.Номенклатура КАК Номенклатура,
		|	ПродажиОстатки.Договор КАК ДоговорКомиссии,
		|	ПродажиОстатки.КоличествоОстаток КАК КоличествоОстаток,
		|	ПродажиОстатки.СуммаОстаток КАК СуммаОстаток,
		|	ПродажиОстатки.СуммаВыплатыОстаток КАК СуммаВыплатыОстаток
		|ИЗ
		|	РегистрНакопления.Продажи.Остатки(
		|			&Момент,
		|			Организация = &Организация
		|			И (Номенклатура, Договор) В
		|				(ВЫБРАТЬ
		|					ВТТовары.Номенклатура КАК Номенклатура,
		|					ВТТовары.ДоговорКомиссии КАК ДоговорКомиссии
		|				ИЗ
		|					ВТТовары КАК ВТТовары)) КАК ПродажиОстатки
		|ГДЕ
		|	(ПродажиОстатки.КоличествоОстаток < 0
		|			ИЛИ ПродажиОстатки.СуммаОстаток < 0)";
	
	Запрос.УстановитьПараметр("Организация", Организация);
	Запрос.УстановитьПараметр("Момент", МоментВремени());
	
	РезультатЗапроса = Запрос.Выполнить();
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
		
		Если ВыборкаДетальныеЗаписи.КоличествоОстаток < 0 Тогда
			Сообщение = Новый СообщениеПользователю;
			Сообщение.Текст = "По номенклатуре " + ВыборкаДетальныеЗаписи.НоменклатураПредставление + 
					" не отчитались перед комитентом за меньшее количество, чем в документе, на: " + (-ВыборкаДетальныеЗаписи.КоличествоОстаток);
			Сообщение.Сообщить();
			Отказ = Истина;
		КонецЕсли;
		
		Если ВыборкаДетальныеЗаписи.СуммаОстаток < 0 Тогда
			Сообщение = Новый СообщениеПользователю;
			Сообщение.Текст = "По номенклатуре " + ВыборкаДетальныеЗаписи.НоменклатураПредставление + 
					" не отчитались перед комитентом за меньшеую стоимость товара, чем в документе, на: " + (-ВыборкаДетальныеЗаписи.СуммаОстаток);
			Сообщение.Сообщить();
			Отказ = Истина;
		КонецЕсли;
		
	КонецЦикла;
		
КонецПроцедуры
