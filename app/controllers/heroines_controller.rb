class HeroinesController < ApplicationController
  before_action :set_heroine!, only: [:show, :edit, :update, :destroy]

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    Heroine.create(heroine_params)
    redirect_to heroines_path
  end

  def edit
  end

  def update
    if @heroine.update(heroine_params)
      redirect_to @heroine
    else
      render :edit
    end
  end

  def destroy
    @heroine.destroy
    redirect_to heroines_url
  end

  private 
  
  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

  def set_heroine!
    @heroine = Heroine.find(params[:id])
  end
end
