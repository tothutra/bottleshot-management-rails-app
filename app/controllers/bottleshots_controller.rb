class BottleshotsController < ApplicationController

  before_action :find_user 

  def index
    @bottleshots = @user.bottleshots
  end

  def new
    @bottleshot = Bottleshot.new
  end

  def create
    @bottleshot = @user.bottleshots.build(bottleshot_params)
    @bottleshot.save
    redirect_to user_bottleshots_path(@user)
  end

  def edit
    
  end

  def update
    
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def bottleshot_params
    params.require(:bottleshot).permit(:varietal)
  end

end
