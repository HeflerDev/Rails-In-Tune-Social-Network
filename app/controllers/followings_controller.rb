class FollowingsController < ApplicationController
  def create
    current_user.Following.create!(following_params)
    redirect_to users_path
  end

  private
  def following_params
    params.require(:following).permit(:follower_id, :followed_id)
  end

end
