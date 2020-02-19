class AddDepartmentToProvider < ActiveRecord::Migration[6.0]
  def change
    add_reference :providers, :department, foreign_key: true
  end
end
