class CreateReceptions < ActiveRecord::Migration[5.0]
  def change
    create_table :receptions do |t|
      t.integer :location_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
