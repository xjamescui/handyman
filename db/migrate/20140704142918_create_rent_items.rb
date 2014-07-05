class CreateRentItems < ActiveRecord::Migration
  def change
    create_table :rent_items do |t|
      t.references :rent_transaction
      t.references :rentable

      t.timestamps
    end
  end
end
