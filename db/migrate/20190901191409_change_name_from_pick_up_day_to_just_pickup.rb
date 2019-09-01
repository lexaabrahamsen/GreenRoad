class ChangeNameFromPickUpDayToJustPickup < ActiveRecord::Migration[6.0]
  def change
    rename_column :zip_pickups, :pickup_day_id, :pickup_id
  end
end
