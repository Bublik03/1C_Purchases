&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	Стр = Элементы.Товары.ТекущиеДанные;
	Стр.Сумма = Стр.Количество * Стр.Цена;
	Объект.СуммаЗаказа = Объект.Товары.Итог("Сумма")
КонецПроцедуры

&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	Стр = Элементы.Товары.ТекущиеДанные;
	Стр.Сумма = Стр.Количество * Стр.Цена;
	Объект.СуммаЗаказа = Объект.Товары.Итог("Сумма")
КонецПроцедуры


