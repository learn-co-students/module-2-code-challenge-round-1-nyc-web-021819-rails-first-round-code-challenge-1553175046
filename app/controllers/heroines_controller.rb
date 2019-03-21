class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end


  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(strong_heroine_params)
    if @heroine.valid?
     redirect_to heroines_path
   else
     flash[:errors] = @heroine.errors.full_messages
     redirect_to new_heroine_path
   end
  end


  def edit
      @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
    @heroine.update(strong_heroine_params)
    redirect_to heroines_path
  end


  private
  def strong_heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end


end
