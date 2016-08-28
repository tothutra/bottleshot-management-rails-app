class UsersController < ApplicationController

  before_action :set_user, only: [:index, :show, :edit, :update, :destroy]

  def show
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user)
  end

end
