class CreateBehaviors < ActiveRecord::Migration[6.0]
  def change
    create_table :behaviors do |t|
      t.string :name
      t.string :details

      t.timestamps
    end
  end
  end
end
