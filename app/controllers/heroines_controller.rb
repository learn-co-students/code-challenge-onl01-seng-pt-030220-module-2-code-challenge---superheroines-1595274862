class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show] 
  
  def index
    @heroines = Heroine.all
  end

  def show

  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
      # creating a Heroine users is redirected to Heroine's show page
    else
      flash[:error] = @heroine.errors.full_messages
      redirect_to new_heroine_path(@heroine)
    end
  end

  private 

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id) 
  end

end
