class CreateBehaviors < ActiveRecord::Migration[6.0]
  def change
    create_table :behaviors do |t|

      t.timestamps
    end
  end
end
