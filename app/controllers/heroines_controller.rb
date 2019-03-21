class HeroinesController < ApplicationController
  def index
    if params[:power_name]
      @heroines = Heroine.all.select do |heroine|
        heroine.power.name == params[:power_name]
      end
    else
      @heroines = Heroine.all
    end
    render :index
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
    render :new
  end

  def create
    @powers = Power.all
    @heroine = Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to @heroine
    else 
      @errors = @heroine.errors.full_messages
      render :new
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
    render :show
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
