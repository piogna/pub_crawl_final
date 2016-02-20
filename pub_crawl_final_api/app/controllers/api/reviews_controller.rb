class Api::ReviewsController < ApplicationController

  def new
    @review = @crawl.reviews.build
  end

  def create
    @review = @crawl.reviews.build(review_params)
    @review.user_id = current_user.id

    if @review.save
      # redirect_to @crawl, notice: "Review created successfully"
    else
      # render :new
    end
  end

  protected

  def load_movie
    @crawl = Crawl.find(params[:movie_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
