class FollowsController < ApplicationController

  def new
    @follow = Follow.new
  end
  def create
    Follow.create!(follows_params)
    redirect_to users_path
  end

  def destroy
    another_user = current_user.followees.find(params[:user])
    current_user.followees.delete(another_user)
    redirect_to users_path
  end

  private
  def follows_params
    params.require(:follow).permit(:follower_id,:followee_id)
  end
end
