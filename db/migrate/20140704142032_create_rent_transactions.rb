class CreateRentTransactions < ActiveRecord::Migration
  def change
    create_table :rent_transactions do |t|
      t.datetime :date_booked
      t.datetime :date_start
      t.datetime :date_end
      t.integer :planned_duration
      t.datetime :date_delivered
      t.datetime :date_returned
      t.boolean :cancelled
      t.decimal :rent_price
      t.decimal :actual_price

      t.timestamps
    end
  end
end
