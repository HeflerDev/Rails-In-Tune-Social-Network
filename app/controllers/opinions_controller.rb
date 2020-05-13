class OpinionsController < ApplicationController
  def new
    @opinion = Opinion.new
  end

  def create
    @opinion = Opinion.new(opinion_params)
    # @opinion.user_id = User.find(params[:id])

    if @opinion.save  
      redirect_to @opinion
    else
      render 'new'
    end
  end

  private
    def opinion_params
      params.require(:opinion).permit(:text)
    end
end
