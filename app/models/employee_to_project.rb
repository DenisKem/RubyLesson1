# == Schema Information
#
# Table name: employee_to_projects
#
#  id          :integer          not null, primary key
#  project_id  :integer
#  employee_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EmployeeToProject < ActiveRecord::Base

  # Это соединительная таблица между работниками и их проектами.
  # Каждая строка должно относиться к конкретному сотруднику и к конкретному проекту.

  # Для организации связей один-ко-многим добавляем внешние ключи project_id и employee_id.

  # Сообщаем фреймворку что строка в соединит. таблице относится к проекту.
  belongs_to :project
  belongs_to :employee
end
