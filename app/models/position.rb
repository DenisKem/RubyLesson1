# == Schema Information
#
# Table name: positions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Position < ActiveRecord::Base
  # Сообщает фреймворку что к данной должности относятся несколько сотрудников.
  # Рельсы автоматически добавят к объекту Position метод employees, который загрузит из БД сотрудников
  # и вернет их массив
  has_many :employees
end
