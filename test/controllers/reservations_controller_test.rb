require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_url
    assert_response :success
  end

  test "should create reservation" do
    assert_difference("Reservation.count") do
      post reservations_url, params: { reservation: { addition_information: @reservation.addition_information, date: @reservation.date, name: @reservation.name, number_of_tables: @reservation.number_of_tables, seating_capacity: @reservation.seating_capacity, start_time: @reservation.start_time } }
    end

    assert_redirected_to reservations_url
  end

  test "should get edit" do
    get edit_reservation_url(@reservation)
    assert_response :success
  end

  test "should update reservation" do
    patch reservation_url(@reservation), params: { reservation: { addition_information: @reservation.addition_information, date: @reservation.date, name: @reservation.name, number_of_tables: @reservation.number_of_tables, seating_capacity: @reservation.seating_capacity, start_time: @reservation.start_time } }
    assert_redirected_to reservation_url(@reservation)
  end

  test "should destroy reservation" do
    assert_difference("Reservation.count", -1) do
      delete reservation_url(@reservation)
    end

    assert_redirected_to reservations_url
  end
end
