class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @items = Item.all

    # Filter items based on search parameters
    if params[:location].present?
      @items = @items.where("location ILIKE ?", "%#{params[:location]}%")
    end

    if params[:check_in].present?
      @items = @items.where("date_available_from <= ?", params[:check_in])
    end

    if params[:check_out].present?
      @items = @items.where("date_available_until >= ?", params[:check_out])
    end

    if params[:guests].present?
      @items = @items.where("max_guests >= ?", params[:guests])
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_strong_params)
    if @item.save
      redirect_to item_path(@item), notice: 'New item successfully listed!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @item.update(item_strong_params)
    redirect_to item_path(@item)
  end

  def destroy
    @item.destroy
    redirect_to items_path, status: :see_other, notice: "Item has been deleted"
  end

  private

  def item_strong_params
    params.require(:item).permit(:name, :description, :price, :max_guests, :category, :location, :date_available_from, :date_available_until, photos: [])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
