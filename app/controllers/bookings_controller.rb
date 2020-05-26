class BookingsController < ApplicationController
  # creating new booking for specific instrument with user params and saving it
  # rendering new page if user did not input all params
  def create
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new(booking_params)
    @booking.instrument = @instrument
    @booking.user = current_user
    # code for calculating the total price depeding on the rental duration
    # if @booking.end_date && @booking.start_date
    #   @booking.value = (@booking.end_date - @booking.start_date).to_f * 5.to_f
    # else
    #   @booking.value = 0
    # end
    # maybe stay on the page and disable the booking button and get a notifaction
    #or redirect to dashboard
    @booking.save
    redirect_to instrument_path(@instrument)

  end

  private

  # whitelisting instrument params for input
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :value)
  end
end
