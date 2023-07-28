class LambosController < ApplicationController
    # @lambos = policy_scope(Lambo)
    def index
      @lambos = policy_scope(Lambo)
      if params[:query].present?
        sql_subquery = "model ILIKE :query OR description ILIKE :query"
        @lambos = @lambos.where(sql_subquery, query: "%#{params[:query]}%")
      end
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
end
