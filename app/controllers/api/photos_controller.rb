class Api::PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render 'index.json.jbuilder'
  end

  def show
    photo_id = params[:id]
    @photo = Photo.find_by(id: photo_id)
    render 'show.json.jbuilder'
  end
end
