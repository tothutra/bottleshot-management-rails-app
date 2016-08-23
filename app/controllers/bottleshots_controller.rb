class BottleshotsController < ApplicationController

  before_action :find_user 

  def index
    @bottleshots = @user.bottleshots
  end

  def new
    
  end

  def create
    
  end

  def edit
    
  end

  def update
    
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

end
