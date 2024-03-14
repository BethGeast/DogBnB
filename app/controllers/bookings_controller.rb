class BookingsController < ApplicationController
  before_action :set_item_bookings, only: %i[create]

  def new
    @item = Item.find(params[:item_id])
  end

  def create
    @booking = Booking.new(booking_strong_params)
    @booking.item = @item
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'New booking successfully placed!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @item = @booking.item
  end

  def edit
    @booking = Booking.find(params[:id])
    @item = @booking.item_id
  end

  def update
    @booking = Booking.find(params[:id])
    @item = @booking.item_id
    @booking.update(booking_strong_params)
    redirect_to bookings_path, notice: "Booking updated!"
  end

  def index
    @bookings = Booking.all
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other, notice: "Booking has been cancelled"
  end

  private

  def set_item_bookings
    @item = Item.find(params[:item_id])
  end

  def booking_strong_params
    params.require(:booking).permit(:item_id, :date_booked_start, :date_booked_end)
  end
end
