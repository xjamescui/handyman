class CreateRateTables < ActiveRecord::Migration
  def change
    create_table :rate_tables do |t|
      t.references :rentable, index: true
      t.decimal :hourly
      t.decimal :daily
      t.decimal :weekly
      t.decimal :late_fee

      t.timestamps
    end
  end
end
