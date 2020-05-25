class BookingsController < ApplicationController
  # creating new booking for specific instrument with user params and saving it
  # rendering new page if user did not input all params
  def create
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new(booking_params)
    @booking.instrument = @instrument

    if @instrument.save
      redirect_to instrument_path(@instrument), notice: 'Created new instrument.'
    else
      # We have to change that to the actual page that is rendered
      render :new
    end
  end

  private

  # whitelisting instrument params for input
  def instrument_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
