class CreateProviderDepts < ActiveRecord::Migration[6.0]
  def change
    create_table :provider_departments do |t|
      t.integer :provider_id
      t.integer :department_id
      t.timestamps
    end
  end
end
