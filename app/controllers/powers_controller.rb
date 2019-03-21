class PowersController < ApplicationController
  before_action :set_power,  only: [:show]

  def index
    @powers = Power.all
  end

  def show
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
byebug

    if @power.save
      redirect_to @power
    else
      render :new
    end
  end

private

  def power_params
    params.require(:power).permit()
  end

  def set_power
    @power = Power.find_by(id: params[:id])
  end

end
