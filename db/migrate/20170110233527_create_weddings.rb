class CreateWeddings < ActiveRecord::Migration[5.0]
  def change
    create_table :weddings do |t|
      t.integer :ceremony_id
      t.integer :reception_id
      t.string :name

      t.timestamps
    end
  end
end
