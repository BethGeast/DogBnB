class ReviewsController < ApplicationController

  def new
    @item = Item.find(params[:item_id])
    @review = Review.new
  end

def create
  @item = Item.find(params[:item_id])
  @review = Review.new(review_strong_params)
  @review.item = @item
  @review.user = current_user

  if @review.save
    redirect_to item_path(@item), notice: "Thank you. Your review was submitted successfully"
  else
    render :new, status: :unprocessable_entity
  end
end

  private

  def review_strong_params
    params.require(:review).permit(:review_text, :review_title, :photo)
  end
end
