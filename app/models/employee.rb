# == Schema Information
#
# Table name: employees
#
#  id          :integer          not null, primary key
#  full_name   :string
#  job_start   :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  position_id :integer
#

class Employee < ActiveRecord::Base
  # Сообщает фреймворку что сотрудник относится к конкретной должности.
  # Для этого к сотруднику добавлен внешний ключ position_id :integer

  # Также рельсы автоматически добавят к объекту метод Employee#position,
  # который загрузит из БД соотвтетсвующую должность и вернеет ее объект Position
  belongs_to :position
  
  has_many :projects, :through => :employee_to_projects
  has_many :employee_to_projects, dependent: :destroy
end
