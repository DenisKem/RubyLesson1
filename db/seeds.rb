# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.delete_all
Position.delete_all

positions = (0..4).to_a.map do
  Position.create! name: Faker::Company.profession
end

10.times do
  Employee.create! full_name: Faker::Name.name,
                   position: positions.sample,
                   job_start: rand(3..5).years.ago
end