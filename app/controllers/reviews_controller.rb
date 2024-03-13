class ReviewsController < ApplicationController

  def new
    @review = Review.find(params[:item_id])
    @item = Item.new
  end

def create
  @review = Review.find(params[:item_id])
  @item = Item.new (review_strong_params)
  @item.review = @review
  if @review.save
    redirect_to review_path(@item), notice: "Thank you. your review was submitted successfully"
  else
    render :new, status:  :unprocessable_entity
  end

  private

    def item_params
      @item = Item.find(params[:item])
      params.require = Item.find(params[:item_id])
      end
    end
end
