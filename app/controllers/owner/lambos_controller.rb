class Owner::LambosController < ApplicationController
  def index
    @lambos = Lambo.all
  end
end
