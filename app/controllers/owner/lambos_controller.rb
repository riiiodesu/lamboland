class Owner::LambosController < ApplicationController
  def index
    @lambos = policy_scope([:owner, Lambo])
  end
end
