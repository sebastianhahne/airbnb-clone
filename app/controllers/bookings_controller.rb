class BookingsController < ApplicationController
  # creating new booking for specific instrument with user params and saving it
  # rendering new page if user did not input all params
  def create
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new(booking_params)
    @booking.instrument = @instrument
    @booking.user = current_user
    # code for calculating the total price depeding on the rental duration
    if @booking.end_date && @booking.start_date
      @total_price = (@booking.end_date - @booking.start_date).to_f * 5
    else
      @total_price = 0
    end

    # maybe stay on the page and disable the booking button and get a notifaction
    #or redirect to dashboard
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to instrument_path(@instrument)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  # whitelisting instrument params for input
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
