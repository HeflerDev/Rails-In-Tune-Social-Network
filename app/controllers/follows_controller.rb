class FollowsController < ApplicationController

  def new
    @follow = Follow.new
  end
  def create
    Follow.create!(follows_params)
    redirect_to users_path
  end

  private
  def follows_params
    params.require(:follow).permit(:follower_id,:followee_id)
  end
end
