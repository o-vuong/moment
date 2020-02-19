class AddBehaviorToConditions < ActiveRecord::Migration[6.0]
  def change
    add_reference :conditions, :behavior, foreign_key: true
  end
end
