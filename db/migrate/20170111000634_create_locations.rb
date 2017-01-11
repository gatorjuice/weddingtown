class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :max_guests
      t.string :phone
      t.string :website
      t.float :latitude
      t.float :longitude
      t.integer :table_cap
      t.integer :table_count
      t.integer :chair_count

      t.timestamps
    end
  end
end
