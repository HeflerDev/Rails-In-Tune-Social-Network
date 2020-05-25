class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index show]
  before_action :already_logged?, only: [:new]
  before_action :right_user?, only: [:edit]

  def friends
    @user = User.includes(:opinions).order('created_at DESC')
  end

  def index
    @user = User.includes(:opinions).order('created_at DESC')
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :fullname, :avatar, :biography)
  end
end
