class RateTable < ActiveRecord::Base
  belongs_to :rentable, inverse_of: :rate_table
end
