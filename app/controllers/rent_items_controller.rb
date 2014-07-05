class RentItemsController < ApplicationController

  def new
    @rent_item = RentItem.new
    @rentable = Rentable.find(params[:rentable]) if params[:rentable]
  end
end
