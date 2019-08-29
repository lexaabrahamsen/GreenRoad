class AddPlaceIdToPlace < ActiveRecord::Migration[6.0]
  def change
    add_column :pickups, :place_id, :integer
  end
end
