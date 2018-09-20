# DesignPatternsSwift
Простые примеры паттернов проектирования сделанных на Swift в Playground и небольшой справочник по каждому, чтобы освежить память.
## Справочник
<b>Паттерн проектирования</b> — это общее повторно используемое решение для часто встречающихся проблем при разработке программного обеспечения.

<b>Паттерн проектирования</b> — это не законченный код для использования при решении конкретной проблемы, а лишь шаблон, который нужно адаптировать под конкретные нужды.

Шаблоны проектирования представляют собой лучшие практики эффективного проектирования, которые помогают улучшить читаемость кода и ускорить процесс разработки.

<b>Типы паттернов проектирования</b>
+ <b>Порождающие</b> -  отвечают за удобное и безопасное создание новых объектов или даже целых семейств объектов.
+ <b>Структурные</b> - отвечают за построение удобных в поддержке иерархий классов.
+ <b>Поведенческие</b> - решают задачи эффективного и безопасного взаимодействия между объектами программы.

## Порождающие
Одиночка — гарантирует, что у класса есть только один экземпляр, и предоставляет к нему глобальную точку доступа.

Прототип — позволяет копировать объекты, не вдаваясь в подробности их реализации.

Строитель — позволяет создавать сложные объекты пошагово. Строитель даёт возможность использовать один и тот же код строительства для получения разных представлений объектов.

Абстрактная фабрика — позволяет создавать семейства связанных объектов, не привязываясь к конкретным классам создаваемых объектов.

Фабричный метод — определяет общий интерфейс для создания объектов в суперклассе, позволяя подклассам изменять тип создаваемых объектов.

## Структурные
Адаптер — позволяет объектам с несовместимыми интерфейсами работать вместе.

Мост — разделяет один или несколько классов на две отдельные иерархии — абстракцию и реализацию, позволяя изменять их независимо друг от друга.

Компоновщик — позволяет сгруппировать множество объектов в древовидную структуру, а затем работать с ней так, как будто это единичный объект.

Декоратор — позволяет динамически добавлять объектам новую функциональность, оборачивая их в полезные «обёртки».

Фасад — предоставляет простой интерфейс к сложной системе классов, библиотеке или фреймворку.

Легковес — позволяет вместить бóльшее количество объектов в отведённую оперативную память. Легковес экономит память, разделяя общее состояние объектов между собой, вместо хранения одинаковых данных в каждом объекте.

Заместитель — позволяет подставлять вместо реальных объектов специальные объекты-заменители. Эти объекты перехватывают вызовы к оригинальному объекту, позволяя сделать что-то до или после передачи вызова оригиналу.

## Поведенческие
Цепочка обязанностей — позволяет передавать запросы последовательно по цепочке обработчиков. Каждый последующий обработчик решает, может ли он обработать запрос сам и стоит ли передавать запрос дальше по цепи.

Команда — превращает запросы в объекты, позволяя передавать их как аргументы при вызове методов, ставить запросы в очередь, логировать их, а также поддерживать отмену операций.

Итератор — даёт возможность последовательно обходить элементы составных объектов, не раскрывая их внутреннего представления.

Посредник — позволяет уменьшить связанность множества классов между собой, благодаря перемещению этих связей в один класс-посредник.

Снимок — позволяет сохранять и восстанавливать прошлые состояния объектов, не раскрывая подробностей их реализации.

Наблюдатель — создаёт механизм подписки, позволяющий одним объектам следить и реагировать на события, происходящие в других объектах.

Состояние — позволяет объектам менять поведение в зависимости от своего состояния. Извне создаётся впечатление, что изменился класс объекта.

Стратегия — определяет семейство схожих алгоритмов и помещает каждый из них в собственный класс, после чего алгоритмы можно взаимозаменять прямо во время исполнения программы.

Шаблонный метод — определяет скелет алгоритма, перекладывая ответственность за некоторые его шаги на подклассы. Паттерн позволяет подклассам переопределять шаги алгоритма, не меняя его общей структуры.

Посетитель — позволяет добавлять в программу новые операции, не изменяя классы объектов, над которыми эти операции могут выполняться.

## Лицензия
    MIT License

    Copyright (c) 2018 Vadim Denisov

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
