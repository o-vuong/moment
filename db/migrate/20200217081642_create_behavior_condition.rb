class CreateBehaviorCondition < ActiveRecord::Migration[6.0]
  def change
    create_table :behavior_condition do |t|
      t.integer :behavior_id
      t.integer :condition_id

      t.timestamps
    end
  end
end
