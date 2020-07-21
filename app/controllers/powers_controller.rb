class PowersController < ApplicationController
  before_action :set_power!, only: [:show, :edit, :update, :destroy]

  def index
    @powers = Power.all
  end

  def show
  end

  def new
    @power = Power.new
  end

  def create
    Power.create(power_params)
    redirect_to @power
  end

  def edit
  end

  def update
    if @power.update(power_params)
      redirect_to @power
    else
      render :edit
    end
  end

  def destroy
    @power.destroy
    redirect_to powers_url
  end

  private 
  
  def power_params
    params.require(:power).permit(:name, :description)
  end

  def set_power!
    @power = Power.find(params[:id])
  end
end
