class RentItemsController < ApplicationController

  before_filter :proper_rentable, :only => [:new]

  def new
    @rent_item, @rent_transaction = RentItem.new, RentTransaction.new
    @rentable = Rentable.find(params[:rentable_id])

    @rent_transaction.date_start = DateTime.now
    @rent_transaction.date_end =  @rent_transaction.date_start + 24.hours

    @rent_item.rentable = @rentable
    @rent_item.rent_transaction = @rent_transaction
  end

  private
  def proper_rentable
    if !params[:rentable_id] || Rentable.find(params[:rentable_id]).nil?
      redirect_to rentables_path
    end
  end
end
