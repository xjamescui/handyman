class RentItem < ActiveRecord::Base
  belongs_to :rent_transaction, inverse_of: :rent_item
  has_one :rentable, inverse_of: :rent_item
end
