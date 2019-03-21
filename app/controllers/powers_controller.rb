class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
    render :show
  end

  def find_by_power
    @power = Power.find(params[:id])
    @heroines = @power.heroines
    render :power_search
  end

end
