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
  belongs_to :project
  belongs_to :employee
end
