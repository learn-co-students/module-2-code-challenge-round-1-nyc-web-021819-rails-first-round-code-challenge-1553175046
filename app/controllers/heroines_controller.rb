class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
    render :index
  end

  def new
    @heroine = Heroine.new
    render :new
  end

  def show
   @heroine = Heroine.find(params[:id])
   render :show
  end

  def create
    Heroine.create(heroine_params)
  end

 private

 def heroine_params
    params.require(:heroine).permit(:name, :super_name)
 end


end
