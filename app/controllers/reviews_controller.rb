class ReviewsController < ApplicationController
<<<<<<< HEAD
  respond_to :json

  def new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end

  def index
    @reviews = Review.all
    respond_with(@reviews)
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:gym_no, :rv_wr_id, :rv_wr_tm, :rv_content,
                                   :rv_img, :rv_point)
  end
=======
>>>>>>> d7e83b8befe27844801ac049d523dd392e8bd944
end
