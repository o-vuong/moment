class ChangeFirstVisitInProviders < ActiveRecord::Migration[6.0]
  def change
    change_column :providers, :first_visit, :date
  end
end
