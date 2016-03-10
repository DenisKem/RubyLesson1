class DeletePositionFromEmployees < ActiveRecord::Migration
  def up
    remove_column :employees, :position
  end

  def down
    add_column :employees, :position, :string
  end

  # Это пример того как вручную обработать событие отката миграции.
end
