class UsersController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_user, only: [:index, :show, :edit, :update]

  def show
    authorize @user
    respond_to do |format|
      format.html { render :show}
      format.json { render json: @user}
    end
  end

  def edit
    
  end

  def update
    authorize @user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :company, :website, :address_1, :address_2, :city, :state, :country, :zipcode, :telephone)
  end

end
