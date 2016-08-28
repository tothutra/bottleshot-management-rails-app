class Admin::WineColorsController < ApplicationController

  before_action :set_wine_color, except: [:index, :create]

  def index
    @wine_colors = WineColor.all
    @wine_color = WineColor.new
  end

  def show
    @bottleshots = @wine_color.bottleshots    
  end

  def create
    @wine_color = WineColor.new(wine_color_params)
    if @wine_color.save
      redirect_to admin_wine_colors_path
    else
      render 'admin/wine_colors/index'
    end    
  end

  def edit
    
  end

  def update
    @wine_color.update(wine_color_params)
    redirect_to admin_wine_colors_path    
  end

  def destroy
    @wine_color.destroy
    redirect_to admin_wine_colors_path    
  end

  private

  def set_wine_color
    @wine_color = WineColor.find(params[:id])
  end

  def wine_color_params
    params.require(:wine_color).permit(:name, :description)
  end

end
