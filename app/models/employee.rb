# == Schema Information
#
# Table name: employees
#
#  id         :integer          not null, primary key
#  full_name  :string
#  position   :string
#  job_start  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Employee < ActiveRecord::Base

end
