class ChangePhoneToBeStringInProviders < ActiveRecord::Migration[6.0]
  def change
    change_column :providers, :phone, :string
  end
end
