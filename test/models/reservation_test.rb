require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  test 'valid reservation' do
    res = Reservation.new(name: 'Test Reservation', seating_capacity: 1, date: Date.new)
    assert res.valid?
  end

  test 'invalid without name' do
    res = Reservation.new(name: 'Test Reservation')
    refute res.valid?, 'reservation is valid without a date'
    assert_not_nil res.errors[:date], 'no validation error for date present'
  end

  test 'invalid without seating capacity' do
    res = Reservation.new(name: 'Test Reservation')
    refute res.valid?
    assert_not_nil res.errors[:seating_capacity]
  end
end
