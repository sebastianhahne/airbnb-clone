class PagesController < ApplicationController

  # Searchbar needs instance of all instruments
  def home
    @instruments = Instrument.all
  end

  # User wants to see all his instruments and bookings
  # check what we need to include for device to work
  def dashboard
    @instruments = Instrument.where(user_id: params[current_user])
    @bookings = Booking.where(user_id: current_user.id)

  end
end
