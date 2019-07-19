class PhotosController < ApplicationController
  def index
    @painting = Painting.find(params[:painting_id])
    @photos = @painting.photos.all
  end

  def new
  end

  def create
    @painting = Painting.find(params[:painting_id])
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect to painting_path(@painting)
    else
      render :new
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
  end


  private

  def photo_params
    params.require(:photo).permit(:data)
  end
end
