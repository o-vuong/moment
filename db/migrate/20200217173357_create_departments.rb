class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string :conditions
      t.string :behaviors

      t.timestamps
    end
  end
end
