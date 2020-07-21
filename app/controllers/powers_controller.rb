class PowersController < ApplicationController
  def index
    @powers = Power.all
  end
  
  def show
    @power = Power.find(params[:id])
  end 
  
  def edit 
    @power = Power.find(params[:id])
  end 

  def update
    @power = Power.find(params[:id])
    heroines = Heroine.find(params[:power][:heroines])
    @power.update(power_params)
    if @power.save
      @power.heroines << heroines
      redirect_to power_path(@power)
    else
      render :edit
    end 
  end 

  private 
  
  def power_params
    params.require(:power).permit(:name, :description)
  end
end
