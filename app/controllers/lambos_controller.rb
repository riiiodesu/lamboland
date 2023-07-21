class LambosController < ApplicationController
  # before_action :set_user, only: %i[new create]

  def index
    @lambos = policy_scope(Lambo)
  end

  def new
    @lambo = Lambo.new
    @current_user = current_user
  end

  def create
    @lambo = Lambo.new(lambo_params)
    @lambo.user = current_user
    if @lambo.save
      redirect_to lambos_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @lambo = Lambo.find(params[:id])
  end

  private

  def lambo_params
    params.require(:lambo).permit(:model, :year, :price, :description, photos: [])
  end
    # not sure if below is required
    # def set_user
    #   @user = User.find(params[:user_id])
    # end
end
