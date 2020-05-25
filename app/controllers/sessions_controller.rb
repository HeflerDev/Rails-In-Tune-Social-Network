class SessionsController < ApplicationController
  before_action :already_logged?, only: [:new]
  def new; end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      log_in(user)
      redirect_to(root_path)
      flash[:success] = 'Access Granted'
    else
      flash.now[:warning] = "The User Doesn't Exists"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
