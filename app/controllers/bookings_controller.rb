  class BookingsController < ApplicationController
  def new
    @painting = Painting.find(params[:painting_id])
    @booking = Booking.new
    @start_date = params[:end_date]
    @end_date = params[:end_date]
    @duration = (params[:end_date].to_date - params[:start_date].to_date).to_i
    @total_price = @duration * @painting.price
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
