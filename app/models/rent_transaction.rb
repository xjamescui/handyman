class RentTransaction < ActiveRecord::Base
  has_many :rent_items, inverse_of: :rent_transaction
end
