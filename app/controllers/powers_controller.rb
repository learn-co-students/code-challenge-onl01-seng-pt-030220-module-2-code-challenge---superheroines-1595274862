class PowersController < ApplicationController
  before_action :set_power, only: [:show, :edit, :update, :destroy]

  def index
    @powers = Power.all
  end

  def show 
  end 

  def edit
  end

  def update
    @power.update(power_params)
    redirect_to @power
  end

  private 

  def set_power
    @power = Power.find(params[:id])
  end 

  def power_params
    params.require(:power).permit(:name, :description, heroine_ids: [])
  end
end
