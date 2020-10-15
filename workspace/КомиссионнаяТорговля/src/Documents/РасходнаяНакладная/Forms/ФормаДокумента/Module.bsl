
#Область ПрограммныйИнтерфейс

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура РассичтатьСумму(ТекущиеДанные)
	
	ТекущиеДанные.Сумма  = ТекущиеДанные.Количество * ТекущиеДанные.Цена;
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовФормы

&НаКлиенте
Процедура СписокНоменклатурыКоличествоПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.СписокНоменклатуры.ТекущиеДанные;
	РассичтатьСумму(ТекущиеДанные);
	
КонецПроцедуры

&НаКлиенте
Процедура СписокНоменклатурыЦенаПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.СписокНоменклатуры.ТекущиеДанные;
	РассичтатьСумму(ТекущиеДанные);
	
КонецПроцедуры

&НаКлиенте
Процедура СписокНоменклатурыСуммаПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.СписокНоменклатуры.ТекущиеДанные;
	ТекущиеДанные.Количество = ТекущиеДанные.Сумма / ТекущиеДанные.Цена;
	
КонецПроцедуры

&НаКлиенте
Процедура СписокНоменклатурыДоговорНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	ТекущиеДанные = Элементы.СписокНоменклатуры.ТекущиеДанные;
	АдресХранилища = СписокНоменклатурыДоговорНачалоВыбораНаСервере(ТекущиеДанные.Номенклатура);
	Если АдресХранилища = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	ПараметрыВыбораДоговора = ПолучитьИзВременногоХранилища(АдресХранилища);
			
	Форма = ПолучитьФорму("Справочник.Договоры.ФормаВыбора");
	
	ЭлементОтбора = Форма.Список.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	ЭлементОтбора.ЛевоеЗначение  = Новый ПолеКомпоновкиДанных("Ссылка");
	ЭлементОтбора.ВидСравнения   = ВидСравненияКомпоновкиДанных.ВСписке;
	ЭлементОтбора.Использование  = Истина;
	ЭлементОтбора.ПравоеЗначение = ПараметрыВыбораДоговора.СписокДоговоров;
	
	Форма.Параметры.РежимВыбора = Истина;
	Форма.ВладелецФормы         = Элемент;
	Форма.Открыть();
		
КонецПроцедуры

&НаСервере
Функция СписокНоменклатурыДоговорНачалоВыбораНаСервере(Номенклатура)
		
	Запрос = Новый Запрос;
	Запрос.Текст =
		"ВЫБРАТЬ
		|	ОстаткиНоменклатурыОстатки.Договор КАК Договор
		|ИЗ
		|	РегистрНакопления.ОстаткиНоменклатуры.Остатки(&Граница, Организация = &Организация
		|	И Номенклатура = &Номенклатура) КАК ОстаткиНоменклатурыОстатки
		|ГДЕ
		|	ОстаткиНоменклатурыОстатки.КоличествоОстаток > 0";
	
	Запрос.УстановитьПараметр("Граница", Новый Граница(Объект.Дата, ВидГраницы.Исключая));
	Запрос.УстановитьПараметр("Номенклатура", Номенклатура);
	Запрос.УстановитьПараметр("Организация", Объект.Организация);
	
	РезультатЗапроса = Запрос.Выполнить().Выгрузить();
	
	ПараметрыВыбораДоговора = Новый Структура("СписокДоговоров", РезультатЗапроса.ВыгрузитьКолонку("Договор"));
		
	АдресХранилища = ПоместитьВоВременноеХранилище(ПараметрыВыбораДоговора);
	
	Возврат АдресХранилища;
	
КонецФункции



#КонецОбласти