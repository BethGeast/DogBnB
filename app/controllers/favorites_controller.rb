class FavoritesController < ApplicationController
  before_action :set_item_fav, only: %i[new create]

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new
    @favorite.item = @item
    @favorite.user = current_user
    if @favorite.save
      redirect_to root_path, notice: "Added to Favorites!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @favorites = Favorite.all
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path, status: :see_other, notice: "Removed from Favorites"
  end

  private

  def set_item_fav
    @item = Item.find(params[:item_id])
  end
end
