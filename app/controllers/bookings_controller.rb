class BookingsController < ApplicationController
  def new
  end

  def create
    @duration = (booking_params[:end_date].to_date - booking_params[:start_date].to_date).to_i
    @painting = Painting.find(params[:painting_id])
    total_price = @duration * @painting.price
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.total_price = total_price
    @booking.painting = @painting
    if @booking.save!
      redirect_to dashboard_path
    else
      render painting_path(@painting)
    end
  end

  def confirm
    @booking = Booking.find(params[:id])
  end

  def update
    # byebug
    @booking = Booking.find(params[:id])
    params[:confirmed] == "true" ? @booking.confirmed = true : @booking.confirmed = false
    @booking.save
    # raise
    # render "dashboard"
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
