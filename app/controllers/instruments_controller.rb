class InstrumentsController < ApplicationController

  # Creating an instance of all instruments
  def index
    if params[:query].present?
      # sql_query = "name ILIKE :query OR category ILIKE :query"
      # @instruments = Instrument.where(sql_query, query: "%#{params[:query]}%")
      @instruments = Instrument.search_by_name_and_category(params[:query])
    else
      # @instruments = Instrument.all
      @instruments = Instrument.all
    end
  end

  # finding instrument user clicked on and creating inctance of booking for form
  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
  end

  # creating new instance of instrument for instrument creation form
  def new
    @instrument = Instrument.new
    @category = ["bowed strings", "wood wind", "brass", "percussions", "keyboard" , "guitar family"]
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
