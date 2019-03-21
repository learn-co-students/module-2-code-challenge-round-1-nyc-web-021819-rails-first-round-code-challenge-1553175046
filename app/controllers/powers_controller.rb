class PowersController < ApplicationController
  def index
    @powers = Power.all
    render :index
  end

  def show
    @power = Power.find(params[:id])
    @heroines = Heroine.all
    render :show
  end




private

  def power_params
    params.require(:power).permit(:name, :description)

  end


end
