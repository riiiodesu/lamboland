class Owner::BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :user_id, :lambo_id)
  end

end
