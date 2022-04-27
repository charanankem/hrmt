class CreateEmployeeProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_projects do |t|
      t.integer :project_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
