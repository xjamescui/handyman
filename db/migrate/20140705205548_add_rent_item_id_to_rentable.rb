class AddRentItemIdToRentable < ActiveRecord::Migration
  def change
    add_column :rentables, :rent_item_id, :integer
  end
end
