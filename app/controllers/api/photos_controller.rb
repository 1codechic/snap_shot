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

  def create
    @photo = Photo.new(
      name: params[:input_name],
      width: params[:input_width],
      height: params[:input_height]
      )
    @photo.save
    render 'show.json.jbuilder'
  end

  def update
    photo_id = params[:id]
    @photo = Photo.find_by(id: photo_id)
    @photo.update(
      name: params[:input_name],
      width: params[:input_width],
      height: params[:input_height]
      )
    render 'show.json.jbuilder'
  end

  def destroy
    photo_id = params[:id]
    @photo = Photo.find_by(id: photo_id)
    @photo.destroy
    render 'show.json.jbuilder'
  end
end
