class ChangeZipCodeToString < ActiveRecord::Migration[6.0]
  def change
    change_column :zips, :zip_code, :string
  end
end
