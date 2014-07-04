class Rentable < ActiveRecord::Base
  belongs_to :rent_item, inverse_of: :rentable
  has_one :rate_table, inverse_of: :rentable
end
