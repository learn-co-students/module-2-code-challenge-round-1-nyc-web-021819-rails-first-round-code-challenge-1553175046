class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    @heroines_search = Heroine.search(params[:search])
    render :index
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
    render :new
  end

  def show
    @heroine = Heroine.find(params[:id])
    render :show
  end

  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to @heroine
    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path(@heroine)
    end
  end




 private

 def heroine_params
   params.require(:heroine).permit(:name, :super_name, :power_id, :search)

 end


end
