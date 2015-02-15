class PhotosController < ApplicationController
  before_action :set_photo, only: [:destroy]
  
  def destroy 
    #TODO: owner is the only who can delete the photo
    @photo.destroy
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end
end