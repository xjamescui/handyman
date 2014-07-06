class RentItem < ActiveRecord::Base
  belongs_to :rent_transaction, inverse_of: :rent_item
  has_one :rentable, inverse_of: :rent_item

  delegate :date_booked, :date_start, :date_end, :planned_duration, :rent_price, to: :rent_transaction
end
