class BottleshotsController < ApplicationController

  before_action :find_user 
  before_action :set_bottleshot, only: [:show, :edit, :update, :destroy]

  def index
    @bottleshots = @user.bottleshots
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @bottleshots}
    end
  end

  def show
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @bottleshot}
    end
  end

  def new
    @bottleshot = Bottleshot.new
  end

  def create
    @bottleshot = @user.bottleshots.build(bottleshot_params)
    if @bottleshot.save
      render json: @bottleshot, status: 201
    else
      render 'bottleshots/new'
    end
    
  end

  def edit

  end

  def update
    @bottleshot.update(bottleshot_params)
    redirect_to user_bottleshots_path(@user)
  end

  def destroy
    @bottleshot.destroy
    redirect_to user_bottleshots_path(@user)
  end

  def orders
    @bottleshots = @user.bottleshots.find_open_order
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def set_bottleshot
    @bottleshot = @user.bottleshots.find_by(id: params[:id])
  end

  def bottleshot_params
    params.require(:bottleshot).permit(:varietal, :vintage, :bottle_shape_id, :glass_color_id, :wine_color_id, :capsule_id, :screenprinted, :paperstock_id, :label_finish_id, :label_file, add_on_ids:[], add_ons_attributes: [:name])
  end

end
