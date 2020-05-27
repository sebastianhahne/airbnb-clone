class InstrumentsController < ApplicationController

  # Creating an instance of all instruments
  def index
    @instruments = Instrument.all
  end

  # finding instrument user clicked on and creating inctance of booking for form
  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
    if ((!@checkin.blank?) && (!@checkout.blank?))
      from = @checkin.split("/")
      to = @checkout.split("/")
      start = Date.new(from[2].to_f, from[1].to_f - 1, from[0].to_f)
      finish = Date.new(to[2].to_f, to[1].to_f - 1, to[0].to_f)
      @nb_days = (finish - start).to_f
      @total_price = (@nb_days * 5.to_f).round
    end
  end

  # creating new instance of instrument for instrument creation form
  def new
    @instrument = Instrument.new
    @category = ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"]
  end

  # now actually creating the new instrument with user params and saving it
  # rendering new page if user did not input all params
  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save
      redirect_to instrument_path(@instrument), notice: 'Created new instrument.'
    else
      render :new
    end
  end

  # finding instrument to destroy - destroying the instrument - redirecting to root_path
  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    redirect_to root_path
  end

  # finding instrument to update - updating instrument with user_params - redirecting to instrument_path
  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
    redirect_to instrument_path(@instrument)
  end

  # finding instrument to update and show it to the user
  # have to check if we need this method
  # def edit
  #  @instrument = Instrument.find(params[:id])
  # end

  private

  # whitelisting instrument params for input
  def instrument_params
    params.require(:instrument).permit(:name, :category, :description, :photo)
  end
end
