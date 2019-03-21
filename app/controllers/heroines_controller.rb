class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
    # @heroines = Heroine.search(params[:search])

    render :index
  end

  # if params[:store]
  #   @coupon = Coupon.where('store LIKE ?', "%#{params[:store]}%")
  # else
  #   @coupon = Coupon.all

  def show
    @heroine = Heroine.find(params[:id])
    @power_id = @heroine.power.id
    render :show
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
    render:new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    @powers = Power.all
      if @heroine.valid?
        redirect_to heroine_path(@heroine)
      else
        flash[:oops] = @heroine.errors.full_messages
        render :new
      end

  end

  def rawpower
    render :rawpower
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

end
