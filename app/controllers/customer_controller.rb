class CustomerController < ApplicationController

  def transactions
    @rentables = Rentable.all
    @warehouses = ["Warehouse A", "Warehouse B", "Warehouse C", "Warehouse D"]
    @stores = ["Hamilton", "Waterloo", "London", "Barrie"]
  end

  def all
    @customers = ["Customer", "John Doe", "Nancy Smith"]
  end

end
