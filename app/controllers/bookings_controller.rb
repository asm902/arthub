  class BookingsController < ApplicationController

  def new
    @painting = Painting.find(params[:painting_id])
    @booking = Booking.new
    @duration = (params[:end_date].to_date - params[:start_date].to_date).to_i
    @total_price = @duration * @painting.price
  end

  def create
    @painting = Painting.find(params[:painting_id])
    @booking = Booking.new(booking_params)
    @booking.painting = @painting
    @booking.user = current_user
    @booking.total_price = @total_price
    if @booking.save
      redirect_to painting_path(@painting)
    else
      render 'paintings/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
