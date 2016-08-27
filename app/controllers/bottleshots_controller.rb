class BottleshotsController < ApplicationController

  before_action :find_user 

  def index
    @bottleshots = @user.bottleshots
  end

  def new
    @bottleshot = Bottleshot.new
  end

  def create
    #raise params.inspect
    bottleshot = @user.bottleshots.build(bottleshot_params)
    redirect_to user_bottleshots_path(@user, bottleshot)
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
    params.require(:bottleshot).permit(:name)
  end

end
