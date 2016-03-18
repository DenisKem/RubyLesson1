class CreateEmployeeToProjects < ActiveRecord::Migration
  def change
    create_table :employee_to_projects do |t|
      t.integer :project_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
