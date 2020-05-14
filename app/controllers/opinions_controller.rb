class OpinionsController < ApplicationController

  def index
    @opinion = Opinion.order('created_at DESC')
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
      params.require(:opinion).permit(:text)
    end
end
