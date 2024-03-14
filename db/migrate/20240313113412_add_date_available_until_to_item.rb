class AddDateAvailableUntilToItem < ActiveRecord::Migration[7.1]
  def change
    rename_column :items, :date_available, :date_available_from
    add_column :items, :date_available_until, :date
  end
end
