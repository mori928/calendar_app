require "application_system_test_case"

class reservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "reservations"
  end

  test "should create reservation" do
    visit reservations_url
    click_on "New reservation"

    fill_in "Name", with: @reservation.name
    fill_in "Start time", with: @reservation.start_time
    click_on "Create reservation"

    assert_text "reservation was successfully created"
    click_on "Back"
  end

  test "should update reservation" do
    visit reservation_url(@reservation)
    click_on "Edit this reservation", match: :first

    fill_in "Name", with: @reservation.name
    fill_in "Start time", with: @reservation.start_time
    click_on "Update reservation"

    assert_text "reservation was successfully updated"
    click_on "Back"
  end

  test "should destroy reservation" do
    visit reservation_url(@reservation)
    click_on "Destroy this reservation", match: :first

    assert_text "reservation was successfully destroyed"
  end
end
