class PhotosController < ApplicationController
  def index
    @painting = Painting.find(params[:painting_id])
    @photo = Photo.new
    @photos = @painting.photos.all
  end

  def new
  end

  def create
    @painting = Painting.find(params[:painting_id])
    @photo = Photo.new(photo_params)
    @photo.painting = @painting
    if @photo.save!
      redirect_to painting_photos_path(@painting)
    else
      render :index
    end
  end

  def destroy
    @photo.destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:data)
  end
end
