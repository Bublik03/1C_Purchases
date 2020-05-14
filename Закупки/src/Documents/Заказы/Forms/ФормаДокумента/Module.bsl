&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	Стр = Элементы.Товары.ТекущиеДанные;
	Стр.Сумма = Стр.Цена * Стр.Количество;
КонецПроцедуры

&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	Стр = Элементы.Товары.ТекущиеДанные;
	Стр.Сумма = Стр.Цена * Стр.Количество;
КонецПроцедуры



&НаКлиенте
Процедура ЗаполнитьТЧПоЗаявкам(Команда)
	ЗаполнитьТЧПоЗаявкамНаСервере();
КонецПроцедуры

Процедура ЗаполнитьТЧПоЗаявкамНаСервере()
	Объект.Товары.Очистить();
	тз = Новый ТаблицаЗначений;
    тз.Колонки.Добавить("Ссылка", Новый ОписаниеТипов("ДокументСсылка.ВнутренниеЗаявки"));
    
    Для Каждого Заявка из Заявки Цикл
        ЗаполнитьЗначенияСвойств(тз.Добавить(), Заявка.Значение)
    КонецЦикла;
	
	Выборка = Справочники.Номенклатура.ВыбратьИерархически();
	СписокРодители = Новый СписокЗначений;
	Пока Выборка.Следующий() Цикл
		Если Выборка.УровеньВВыборке() = 0 Тогда
			СписокРодители.Добавить(Выборка.Наименование);
		КонецЕсли;
	КонецЦикла;
	
	Для каждого Родитель из СписокРодители Цикл
		Сообщить(Родитель.Значение);
	КонецЦикла;
	
	Запрос = Новый Запрос;
//	Запрос.Текст = 
	
//		"ВЫБРАТЬ
//		|	ВнутренниеЗаявкиТовары.Номенклатура КАК Номенклатура,
//		|	СУММА(ВнутренниеЗаявкиТовары.Количество) КАК Количество
//		|ИЗ
//		|	Документ.ВнутренниеЗаявки.Товары КАК ВнутренниеЗаявкиТовары,
//		|ГДЕ
//		|	ВнутренниеЗаявкиТовары.Номенклатура.Родитель = &Родитель
//		|СГРУППИРОВАТЬ ПО
//		|	ВнутренниеЗаявкиТовары.Номенклатура";
//	
	
//		"ВЫБРАТЬ РАЗЛИЧНЫЕ
//		|	ТЗ.Ссылка КАК Ссылка
//		|ПОМЕСТИТЬ ТЗ
//		|ИЗ
//		|	&ТЗ КАК ТЗ
//		|;
//		|
//		|////////////////////////////////////////////////////////////////////////////////
//		|ВЫБРАТЬ
//		|	ВнутренниеЗаявкиТовары.Номенклатура КАК Номенклатура,
//		|	СУММА(ВнутренниеЗаявкиТовары.Количество) КАК Количество
//		|ИЗ
//		|	Документ.ВнутренниеЗаявки.Товары КАК ВнутренниеЗаявкиТовары
//		|		ВНУТРЕННЕЕ СОЕДИНЕНИЕ ТЗ КАК ТЗ
//		|		ПО ВнутренниеЗаявкиТовары.Ссылка = ТЗ.Ссылка
//		|
//		|СГРУППИРОВАТЬ ПО
//		|	ВнутренниеЗаявкиТовары.Номенклатура";
//	
//	
//	Запрос.УстановитьПараметр("ТЗ", ТЗ);

//	Запрос.УстановитьПараметр("Родитель", Родитель);
//	
//	РезультатЗапроса = Запрос.Выполнить();
//	
//	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
//	
//	Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
//		Строка = Объект.Товары.Добавить();
//		Строка.Номенклатура = ВыборкаДетальныеЗаписи.Номенклатура;
//		Строка.Количество = ВыборкаДетальныеЗаписи.Количество;
//	КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
//	Элементы.КатегорияТоваров;
КонецПроцедуры







