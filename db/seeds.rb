# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.destroy_all
Position.destroy_all
Project.destroy_all
User.destroy_all

# Для удаления важно использовать destroy_all для того чтобы вызывались коллбэки
# и выполнялось каскадное удаление

positions = (0..4).to_a.map do

  # Для тестовых данных используем библиотеку faker
  # https://github.com/stympy/faker

  Position.create! name: Faker::Company.profession
end

projects = (0..4).to_a.map do
  Project.create! name: Faker::Lorem.sentence
end

10.times do
  employee = Employee.create! full_name: Faker::Name.name,
                   position: positions.sample,
                   job_start: rand(3..5).years.ago

  rand(1..2).times do
    employee.projects << projects.sample
  end
end

u = User.create! email: 'admin@example.com', password: '12345678'
u.roles << :admin
u.save

u2 = User.create! email: 'manager@example.com', password: '12345678'
u2.roles << :manager
u2.save


