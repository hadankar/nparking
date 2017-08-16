class AddAvailabilityFieldsToPlace < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :availableFrom, :datetime
    add_column :places, :availableTo, :datetime
  end
end
