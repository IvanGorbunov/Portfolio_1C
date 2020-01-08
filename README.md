# Пример решения задачи автоматизации учета на предприятии
Цель: показать пример конфигурирования базы данных 1С и написания кода, а также пример создания правил обмена с типовой БП 3.0.

| Статус сборки | Текущий релиз |
|---------------|---------------|
|               |    0.3.2.4    |

----
# Описание
* FeatureFiles - скрипты автоматического тестирования 1С для проекта https://github.com/silverbulleters/add
* workspace - проект 1C:Enterprise Development Tools 1.16.0.363
* Documents - автоматически генерируемая документация
* FeatureFiles - правила обмена данными

----
# Техническое задание

Необходимо автоматизировать учет хозяйственных операций на предприятии.

Организация занимается комиссионной торговлей. Учет сделок ведется в разрезе договоров с комитентами. В конце учетного периода(месяц) формируются документы для оплаты комитенту за проданный товар.

Приход товаров отражается документом «Приходная накладная». В каждой накладной указывается договор комиссии, по которому поступил данный товар и суммы по каждому товару.

Продажа отражается документом «Расходная накладная». Для каждого товара в документе указывается договор комиссии, по которому этот товар поступил в организацию. В том случае, если товара по данному договору нет, документ проводиться не должен. Кроме того, должен происходить контроль суммы, по которой продается товар. Сумма продажи не должна быть ниже суммы закупки для данного товара по данному договору. В том случае, если одинаковый товар поступал по одному договору с указанием разных сумм, то при продаже контролируемая сумма рассчитывается как средняя по товару и договору.

Выплата комитенту происходит документом «Расход денег», в котором пользователем должно быть указано по какому договору, какой товар, в каком количестве, на какую сумму был продан, но еще не оплачен, а также введена сумма выплаты комитенту.

Предоплаты не предусмотрены. При проведении документа необходимо проверять, что мы не пытаемся рассчитаться с комитентом за большее количество товаров, чем мы продали и чем мы уже отчитались перед ним. Документ делается на одного комитента, но включает информацию по нескольким договорам.

Комиссионное вознаграждение рассчитывается исходя из условий договора, как процент от суммы продажи. Процент устанавливается в каждом договоре. Со временем значение процента может быть изменено, но историю его изменения в информационной базе хранить не надо.

Необходимо создать отчеты:
	* продажи за период
	* ведомость по взаиморасчетам
	* распределение выручки
	* остатки товаров.

Создать правила обмена с типовой конфигурацией 1С:Бухгалтерия предприятия 3.0
