class AddImageNameToRentable < ActiveRecord::Migration
  def change
    add_column :rentables, :image_name, :string
  end
end
