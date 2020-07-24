class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show 
    @power = Power.find_by(id: params[:id])
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    if @power.save
      redirect_to power_path(@power)
    else 
      render :new
    end
  end

  def edit
    @power = Power.find_by(id: params[:id])
  end

  def update
    @power = Power.find_by(id: params[:id])
    
    
     if @power.update(power_params)
       redirect_to power_path(@power)
     else 
      render :edit
     end
  end
  



  private

  def power_params
    params.require(:power).permit(:name, :description, :heroine_ids => [])
  end
end
