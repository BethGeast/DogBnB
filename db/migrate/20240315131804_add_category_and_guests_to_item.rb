class AddCategoryAndGuestsToItem < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :category, :string
    add_column :items, :max_guests, :integer
  end
end
