class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    heroine = Heroine.create(heroine_param)
    if heroine.valid?
    redirect_to heroines_path
    else
      flash[:heroine_errors] = heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end
  #issue showing the power, i used power

  private

  def heroine_param
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
