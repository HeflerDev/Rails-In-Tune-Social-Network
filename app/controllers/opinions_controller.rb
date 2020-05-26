class OpinionsController < ApplicationController
  before_action :logged_in_user

  def index
    @opinion = Opinion.includes(:author).order('created_at DESC')
    @opinion2 = Opinion.new
  end

  def new
    @opinion = Opinion.new
  end

  def create
    @opinion = Opinion.new(opinion_params)
    @opinion.author_id = current_user.id

    if @opinion.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def opinion_params
    params.require(:opinion).permit(:text, :title)
  end
end
