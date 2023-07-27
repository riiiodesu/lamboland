class Owner::LambosController < ApplicationController
  def index
    @lambos = policy_scope([:owner, Lambo])
    @bookings = policy_scope([:owner, Booking])
  end
end
