class AddProviderToDepartment < ActiveRecord::Migration[6.0]
  def change
    add_reference :departments, :provider, foreign_key: true
  end
end
