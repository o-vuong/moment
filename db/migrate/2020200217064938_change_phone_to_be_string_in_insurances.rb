class ChangePhoneToBeStringInInsurances < ActiveRecord::Migration[6.0]
  def change
    change_column :insurances, :phone, :string
  end
end
