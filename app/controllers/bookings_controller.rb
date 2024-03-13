class BookingsController < ApplicationController
  before_action :set_item_bookings

  def new
    @bookings = Booking.new
  end

  def create
    @user = User.find(params[:user_id])
    @booking = Booking.new(booking_strong_params)
    @booking.item = @item
    if @booking.save
      redirect_to item_path(@item)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_item_bookings
    @item = Item.find(params[:item_id])
  end

  def booking_strong_params
    params.require(:booking).permit(:user_id, :item_id, :date_booked_start, :date_booked_end)
  end
end
