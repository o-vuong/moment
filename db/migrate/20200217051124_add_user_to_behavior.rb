class AddUserToBehavior < ActiveRecord::Migration[6.0]
  def change
    add_reference :behaviors, :user, foreign_key: true
  end
end
