class HeroinesController < ApplicationController
  before_action :set_heroine, only: :show

  def index
    # Added extra vars for testing filtering solutions
    @power = Power.new
    @powers = Power.all
    @heroine = Heroine.new
    @heroines = Heroine.all
  end

  def filtered
    # Added extra vars for testing filtering solutions
    # need to get param of heroine[:power_id, 
    # only show based on that.. put filtering in model..]
    @power = Power.find(params[:heroine][:power_id])
    @powers = Power.all
    @heroines = Heroine.all

    render :filtered
  end

  def show
    # @heroine through set_heroine
    #implicitly renders show
  end

  def new
    @errors = flash[:errors]
    @powers = Power.all
    @heroine = Heroine.new
  end

  def create
    #error handling for validation
    @heroine = Heroine.create(heroine_params)
    if !@heroine.valid?
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    else
      redirect_to heroine_path(@heroine)
    end
    #does this implicitly redirect or render? Probably not, check
  
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

end
