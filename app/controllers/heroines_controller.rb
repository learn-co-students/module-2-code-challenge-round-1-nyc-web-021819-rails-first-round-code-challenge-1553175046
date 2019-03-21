class HeroinesController < ApplicationController
  before_action :set_heroine,  only: [:show]

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(super_params)
byebug
 
    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

private

  def super_params
    params.require(:heroine).permit(:name, :super_name, :super_power)
  end

  def set_heroine
    @heroine = Heroine.find_by(id: params[:id])
  end

end
