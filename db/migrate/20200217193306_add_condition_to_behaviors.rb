class AddConditionToBehaviors < ActiveRecord::Migration[6.0]
  def change
    add_reference :behaviors, :condition, foreign_key: true
  end
end
