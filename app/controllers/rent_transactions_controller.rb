class RentTransactionsController < ApplicationController
  before_action :set_rent_transaction, only: [:show, :edit, :update, :destroy]

  # GET /rent_transactions
  # GET /rent_transactions.json
  def index
    @rent_transactions = RentTransaction.all
  end

  # GET /rent_transactions/1
  # GET /rent_transactions/1.json
  def show
  end

  # GET /rent_transactions/new
  def new
    @rent_transaction = RentTransaction.new
  end

  # GET /rent_transactions/1/edit
  def edit
  end

  # POST /rent_transactions
  # POST /rent_transactions.json
  def create
    @rent_transaction = RentTransaction.new(rent_transaction_params)

    respond_to do |format|
      if @rent_transaction.save
        format.html { redirect_to @rent_transaction, notice: 'Rent transaction was successfully created.' }
        format.json { render :show, status: :created, location: @rent_transaction }
      else
        format.html { render :new }
        format.json { render json: @rent_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rent_transactions/1
  # PATCH/PUT /rent_transactions/1.json
  def update
    respond_to do |format|
      if @rent_transaction.update(rent_transaction_params)
        format.html { redirect_to @rent_transaction, notice: 'Rent transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent_transaction }
      else
        format.html { render :edit }
        format.json { render json: @rent_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_transactions/1
  # DELETE /rent_transactions/1.json
  def destroy
    @rent_transaction.destroy
    respond_to do |format|
      format.html { redirect_to rent_transactions_url, notice: 'Rent transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_transaction
      @rent_transaction = RentTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_transaction_params
      params.require(:rent_transaction).permit(:date_booked, :date_start, :date_end, :planned_duration, :date_delivered, :date_returned, :cancelled, :rent_price, :actual_price)
    end
end
