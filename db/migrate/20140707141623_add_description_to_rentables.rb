class AddDescriptionToRentables < ActiveRecord::Migration
  def change
    add_column :rentables, :description, :string
  end
end
