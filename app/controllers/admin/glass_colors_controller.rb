class Admin::GlassColorsController < ApplicationController

  before_action :set_glass_color, except: [:index, :create]

  def index
    @glass_colors = GlassColor.all.sort_by {|color| color.name }
    @glass_color = GlassColor.new
  end

  def show
    @bottleshots = @glass_color.bottleshots    
  end

  def create
    @glass_color = GlassColor.new(glass_color_params)
    if @glass_color.save
      redirect_to admin_glass_colors_path
    else
      render 'admin/glass_colors/index'
    end    
  end

  def edit
    
  end

  def update
    @glass_color.update(glass_color_params)
    redirect_to admin_glass_colors_path    
  end

  def destroy
    @glass_color.destroy
    redirect_to admin_glass_colors_path    
  end

  private

  def set_glass_color
    @glass_color = GlassColor.find(params[:id])
  end

  def glass_color_params
    params.require(:glass_color).permit(:name, :description)
  end

end
