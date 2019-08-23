class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.float :distance
      t.string :hours

      t.timestamps
    end
  end
end
