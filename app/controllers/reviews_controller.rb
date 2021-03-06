class ReviewsController < ApplicationController
  before_action :authenticate_user!
  expose_decorated(:review)
  expose(:product)
  expose(:category) { product.category }
  expose_decorated(:reviews, ancestor: :product)

  def edit
  end

  def create

    self.review = Review.new(review_params)
    self.review.user_id = current_user.id

    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
