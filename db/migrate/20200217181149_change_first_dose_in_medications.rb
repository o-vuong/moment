class ChangeFirstDoseInMedications < ActiveRecord::Migration[6.0]
  def change
    change_column :medications, :first_dose, :date
  end
end
