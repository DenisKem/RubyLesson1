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
  belongs_to :position
  
  has_many :projects, :through => :employee_to_projects
  has_many :employee_to_projects
end
