class BookingsController < ApplicationController
  # creating new booking for specific instrument with user params and saving it
  # rendering new page if user did not input all params
  def create
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new(booking_params)
    @booking.instrument = @instrument
    @booking.user = current_user
    @booking.status = "Pending validation"
    # maybe stay on the page and disable the booking button and get a notifaction
    #or redirect to dashboard
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to instrument_path(@instrument)
    end
  end

  # def index
  #    @bookings = Booking.where(user_id: current_user.id)
  # end

  def update
    set_booking
    @booking.update(booking_params)
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  # whitelisting instrument params for input
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
