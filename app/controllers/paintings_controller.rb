class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @paintings = Painting.all
    if params[:query].present?
      # @paintings = Painting.where(location: params[:query])
      sql_query = " \
        paintings.name @@ :query \
        OR paintings.description @@ :query \
        OR paintings.artist @@ :query \
        OR paintings.location @@ :query\
      "
      @paintings = Painting.where(sql_query, query: "%#{params[:query]}%")
    else
      @paintings = Painting.all
    end
  end

  def show
    @painting = Painting.find(params[:id])
    @booking = Booking.new
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    @painting.user = current_user
    if @painting.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    @painting.update(painting_params)
    if @painting.save!
      redirect_to painting_path(@painting)
    else
      render :edit
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
  end

  private

  def set_painting
    @painting = Painting.find(params[:id])
  end

  def painting_params
    params.require(:painting).permit(:name, :description, :artist, :year, :style, :available, :price, :photo)
  end
end
