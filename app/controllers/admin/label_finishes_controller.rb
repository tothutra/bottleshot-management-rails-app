class Admin::LabelFinishesController < ApplicationController

  before_action :set_label_finish, except: [:index, :create]

  def index
    @label_finishes = LabelFinish.all
    @label_finish = LabelFinish.new
  end

  def show
    @bottleshots = @label_finish.bottleshots    
  end

  def create
    @label_finish = LabelFinish.new(label_finish_params)
    if @label_finish.save
      redirect_to admin_label_finishes_path
    else
      render 'admin/label_finishes/index'
    end    
  end

  def edit
    
  end

  def update
    @label_finish.update(label_finish_params)
    redirect_to admin_label_finishes_path    
  end

  def destroy
    @label_finish.destroy
    redirect_to admin_label_finishes_path    
  end

  private

  def set_label_finish
    @label_finish = LabelFinish.find(params[:id])
  end

  def label_finish_params
    params.require(:label_finish).permit(:name, :description)
  end

end
