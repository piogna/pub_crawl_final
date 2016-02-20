class Api::ReviewsController < ApplicationController

  # validates :rating,
  #   presence: true,
  #   numericality: { greater_than: 0, less_than: 6 }

  # validates :comment,
  #   length: { maximum: 200 }

  # before_filter :load_movie, :restrict_access

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

  def load_crawl
    @crawl = Crawl.find(params[:crawl_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
