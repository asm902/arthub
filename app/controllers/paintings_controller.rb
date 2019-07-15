class PaintingsController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :new, :create]
  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    if @painting.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def painting_params
    params.require(:paintings).permit(:name, :description, :year, :style, :available, :price, :photo)
  end
end
