class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @lambo = Lambo.find(params[:lambo_id])
  end

  def create
    @lambo = Lambo.find(params[:lambo_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.lambo = @lambo
    # lines 13 to 16 describe what is needed to create a booking

    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :user_id, :lambo_id)
  end
end
