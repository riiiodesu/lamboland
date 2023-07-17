class LambosController < ApplicationController
  def index
    @lambos = Lambo.all
  end

  def new
    @lambo = Lambo.new
  end

  def create
    @lambo = Lambo.new(lambo_params)
    @lambo.user = @user
    @lambo.save
    redirect_to lambos_path(@user)
  end

  private

  def lambo_params
    params.require(:lambo).permit(:model, :year, :price, :description)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
