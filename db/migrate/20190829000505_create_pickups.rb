class CreatePickups < ActiveRecord::Migration[6.0]
  def change
    create_table :pickups do |t|
      t.string :pickup_days

      t.timestamps
    end
  end
end
