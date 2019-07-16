class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @paintings = Painting.all
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

  private

  def painting_params
    params.require(:painting).permit(:name, :description, :artist, :year, :style, :available, :price, :photo, :user)
  end
end
