class ReviewsController < ApplicationController
  before_filter :authorize

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user

    redirect_to :back if @review.save
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :back
  end
  
  private

  def review_params
    params.require(:review).permit(
      :description,
      :rating
    )
  end
end
