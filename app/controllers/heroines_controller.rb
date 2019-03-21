class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    render :index
  end

  def show
    @heroine = Heroine.find(params[:id])
    render :show
  end

  def new
    @heroine = Heroine.new
    render :new
  end

  #was unable to get my validation to work. I believe the error is in my model; i don't think i'm using uniq correctly; with a little more time i would be able to google and get the validation to function properly
  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to heroines_path
    else
      redirect_to new_heroine_path
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
end
