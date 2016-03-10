namespace :demo do

  desc 'демонстрация возможностей системы после 4 занятия'
  task employees_position: :environment do

    position = Position.create! name: 'торговец черным деревом'

    employee = Employee.new full_name: 'себастьян перейро',
                            position: position


    employee.job_start = DateTime.now
    employee.save!
  end
end
