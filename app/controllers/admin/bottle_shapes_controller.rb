class Admin::BottleShapesController < ApplicationController

  before_action :set_bottleshape, except: [:index, :create]

  def index
    @bottle_shapes = BottleShape.all.sort_by {|shape| shape.name }
    @bottle_shape = BottleShape.new
  end

  def show
    @bottleshots = @bottle_shape.bottleshots
  end

  def create
    @bottle_shape = BottleShape.new(bottle_shape_params) 
    if @bottle_shape.save
      redirect_to admin_bottle_shapes_path
    else
      render 'admin/bottle_shapes/index'
    end
  end

  def edit
    
  end

  def update
    @bottle_shape.update(bottle_shape_params)
    redirect_to admin_bottle_shapes_path
  end

  def destroy
    @bottle_shape.destroy
    redirect_to admin_bottle_shapes_path
  end

  private

  def set_bottleshape
    @bottle_shape = BottleShape.find(params[:id])
  end

  def bottle_shape_params
    params.require(:bottle_shape).permit(:name, :description)
  end
   
end
