class UsersController < ApplicationController
  
  before_action :authenticate_user!, :only => [:show, :index, :edit, :update]
  
  def show
    @user = User.find(params[:id])
    if @user.id == current_user.id
      @entries = current_user.entries.limit(3)
    else
      @room = Room.new
      @entry = Entry.new
    end
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
    if @user.id == current_user.id
    else
      redirect_to "/posts"
      flash[:alert] = "無効なユーザー"
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.id == current_user.id
      @user.update(params.require(:user).permit(:name, :self_introduction, :image))
    else
      redirect_to "/posts"
      flash[:alert] = "無効なユーザー"
    end
  end
  
end
