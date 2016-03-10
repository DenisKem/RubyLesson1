class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :position
      t.datetime :job_start

      t.timestamps null: false
    end
  end
end
