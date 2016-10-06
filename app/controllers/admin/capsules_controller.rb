class Admin::CapsulesController < ApplicationController

  before_action :set_capsule, except: [:index, :create]

  def index
    @capsules = Capsule.all.sort_by {|capsule| capsule.name }
    @capsule = Capsule.new
  end

  def show
    @bottleshots = @capsule.bottleshots    
  end

  def create
    @capsule = Capsule.new(capsule_params)
    if @capsule.save
      redirect_to admin_capsules_path
    else
      render 'admin/capsules/index'
    end    
  end

  def edit
    
  end

  def update
    @capsule.update(capsule_params)
    redirect_to admin_capsules_path    
  end

  def destroy
    @capsule.destroy
    redirect_to admin_capsules_path    
  end

  private

  def set_capsule
    @capsule = Capsule.find(params[:id])
  end

  def capsule_params
    params.require(:capsule).permit(:name, :description)
  end

end
