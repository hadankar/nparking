class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
      t.string :address
      t.string :alias
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
