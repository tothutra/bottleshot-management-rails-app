class WineColorsController < ApplicationController

  before_action :set_paperstock, except: [:index, :create]

  def index
    @paperstocks = Paperstock.all
    @paperstock = Paperstock.new
  end

  def show
    @bottleshots = @paperstock.bottleshots    
  end

  def create
    @paperstock = Paperstock.new(paperstock_params)
    if @paperstock.save
      redirect_to admin_paperstocks_path
    else
      render 'admin/paperstocks/index'
    end    
  end

  def edit
    
  end

  def update
    @paperstock.update(paperstock_params)
    redirect_to admin_paperstocks_path    
  end

  def destroy
    @paperstock.destroy
    redirect_to admin_paperstocks_path    
  end

  private

  def set_paperstock
    @paperstock = Paperstock.find(params[:id])
  end

  def paperstock_params
    params.require(:paperstock).permit(:name, :description)
  end

end
