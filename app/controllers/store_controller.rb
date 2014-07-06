class StoreController < ApplicationController
  def overview
    @rentables = Rentable.all
    @warehouses = ["Warehouse A", "Warehouse B", "Warehouse C", "Warehouse D"]
    @stores = ["Hamilton", "Waterloo", "London", "Barrie"]
  end
end
