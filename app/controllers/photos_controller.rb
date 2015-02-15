class PhotosController < ApplicationController
  before_action :set_photo, only: [:destroy]
  
  def destroy 
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
    end
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end
end