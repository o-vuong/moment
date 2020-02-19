class AddUserToInsurances < ActiveRecord::Migration[6.0]
  def change
    add_reference :insurances, :user, foreign_key: true
  end
end
