class AddCreatedbyidToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :user_id, :integer, index: true
  end
end
