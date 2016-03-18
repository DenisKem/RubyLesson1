## После 5 занятия
1. Сохраните и откатите изменения сделанные на занятии
`git stash`
2. Снимите свежую копию проекта
`git pull`
3. Выполните миграции и сиды
4. Поднимите сервер

**Не забудьте просмотреть следующие файлы:**
*ruby_lesson1/db/seeds.rb*
*ruby_lesson1/lib/tasks/demo.rake*

## Полезные ссылки
1. Создание и удаление объектов
http://rusrails.ru/active-record-basics#crud-chtenie-i-zapis-dannyh
1. Связи между сущностями
http://rusrails.ru/active-record-associations
1. Получение объектов из БД
http://rusrails.ru/active-record-query-interface
3.1 Сортировка
http://rusrails.ru/active-record-query-interface#ordering
Также пример по сортировке есть в файле
*ruby_lesson1/lib/tasks/demo.rake*

## Шпаргалка по связям
Материал 4 и 5 занятий. 

### Связь один-ко-многим
#### Реализация

1. Добавьте к зависимой таблице внешний ключ
  `bundle exec rails g migration add_position_id_to_employees position_id:integer`
  Файл с миграцией *ruby_lesson1/db/migrate/20160310074428_add_position_id_to_employees.rb*

2. Примените миграцию 
 `bundle exec rake db:migrate`
 
3. Настройте связи в связываемых моделях
 *ruby_lesson1/app/models/position.rb*
 *ruby_lesson1/app/models/employee.rb*

### Связь многие-ко-многим

#### Реализация
1. Создайте соединительную таблицу
 `bundle exec rails g model EmployeeToProject project_id:integer employee_id:integer`
 Файл с миграцией *ruby_lesson1/db/migrate/20160316121441_create_employee_to_projects.rb*
 
2. Примените миграцию 
 `bundle exec rake db:migrate`
 
3. Настройте связи в связываемых моделях
 
 *ruby_lesson1/app/models/project.rb*
 *ruby_lesson1/app/models/employee.rb*
 *ruby_lesson1/app/models/employee_to_project.rb*


