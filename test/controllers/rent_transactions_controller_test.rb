require 'test_helper'

class RentTransactionsControllerTest < ActionController::TestCase
  setup do
    @rent_transaction = rent_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rent_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rent_transaction" do
    assert_difference('RentTransaction.count') do
      post :create, rent_transaction: { actual_price: @rent_transaction.actual_price, cancelled: @rent_transaction.cancelled, date_booked: @rent_transaction.date_booked, date_delivered: @rent_transaction.date_delivered, date_end: @rent_transaction.date_end, date_returned: @rent_transaction.date_returned, date_start: @rent_transaction.date_start, planned_duration: @rent_transaction.planned_duration, rent_price: @rent_transaction.rent_price }
    end

    assert_redirected_to rent_transaction_path(assigns(:rent_transaction))
  end

  test "should show rent_transaction" do
    get :show, id: @rent_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rent_transaction
    assert_response :success
  end

  test "should update rent_transaction" do
    patch :update, id: @rent_transaction, rent_transaction: { actual_price: @rent_transaction.actual_price, cancelled: @rent_transaction.cancelled, date_booked: @rent_transaction.date_booked, date_delivered: @rent_transaction.date_delivered, date_end: @rent_transaction.date_end, date_returned: @rent_transaction.date_returned, date_start: @rent_transaction.date_start, planned_duration: @rent_transaction.planned_duration, rent_price: @rent_transaction.rent_price }
    assert_redirected_to rent_transaction_path(assigns(:rent_transaction))
  end

  test "should destroy rent_transaction" do
    assert_difference('RentTransaction.count', -1) do
      delete :destroy, id: @rent_transaction
    end

    assert_redirected_to rent_transactions_path
  end
end
