class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end


  def new
    @power = Power.new
  end

  def create
    @power = Power.create(strong_power_params)
     redirect_to new_power_path
  end


  def edit
      @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])
    @power.update(strong_power_params)
    redirect_to powers_path
  end


private
def strong_power_params
  params.require(:power).permit(:name, :description)
end



end
