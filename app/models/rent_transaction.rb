class RentTransaction < ActiveRecord::Base
  has_many :rent_item, inverse_of: :rent_transaction
end
