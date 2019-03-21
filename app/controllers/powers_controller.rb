class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  # def search
  #   # @power = Power.find(params[:id])
  #   render :search
  # end
end
