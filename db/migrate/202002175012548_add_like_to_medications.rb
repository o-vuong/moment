class AddLikeToMedications < ActiveRecord::Migration[6.0]
  def change
    add_column :medications, :like, :integer
  end
end
