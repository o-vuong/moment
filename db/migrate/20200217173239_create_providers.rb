class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.datetime :first_visit
      t.text :notes

      t.timestamps
    end
  end
end
