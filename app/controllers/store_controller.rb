class StoreController < ApplicationController
  def overview
    @rentables = Rentable.all
    @warehouses = ["Warehouse A", "Warehouse B", "Warehouse C", "Warehouse D"]
    @stores = ["Hamilton", "Waterloo", "London", "Barrie"]
    @customers = ["Customer", "John Doe", "Nancy Smith", "Gandalf Gray", "Bilbo Baggins", "Frodo", "Orlando Bloom"]
  end
end
