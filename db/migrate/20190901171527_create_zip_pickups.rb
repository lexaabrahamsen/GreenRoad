class CreateZipPickups < ActiveRecord::Migration[6.0]
  def change
    create_table :zip_pickups do |t|
      t.integer :zip_id
      t.integer :pickup_day_id

      t.timestamps
    end
  end
end
