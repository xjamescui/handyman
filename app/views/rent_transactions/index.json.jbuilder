json.array!(@rent_transactions) do |rent_transaction|
  json.extract! rent_transaction, :id, :date_booked, :date_start, :date_end, :planned_duration, :date_delivered, :date_returned, :cancelled, :rent_price, :actual_price
  json.url rent_transaction_url(rent_transaction, format: :json)
end
