class PhotosController < ApplicationController

  def new_form
    render("/photos/new_form.html.erb")
  end

  def create_row
    url = params[:da_source]
    cap = params[:da_caption]
    new_photo = Photo.new
    new_photo.source = url
    new_photo.caption = cap
    new_photo.save
    # render("/photos/create_row.html.erb")
    redirect_to("/photos/#{new_photo.id}")
  end

  def index
    @list_of_all_my_photos = Photo.all
    render("/photos/index.html.erb")
  end

  def show
    the_id = params[:da_id]
    @my_photo = Photo.find(the_id)
    render("/photos/show.html.erb")
  end

  def edit_form
    the_id = params[:da_id]
    @my_photo = Photo.find(the_id)
    render("/photos/edit_form.html.erb")
  end

  def update_row
    the_id = params[:da_id]
    change_photo = Photo.find(the_id)
    url = params[:da_source]
    cap = params[:da_caption]
    change_photo.source = url
    change_photo.caption = cap
    change_photo.save
    # render("/photos/create_row.html.erb")
    redirect_to("/photos/#{new_photo.id}")
  end

  def destroy_row
    the_id = params[:da_id]
    photo_to_delete = Photo.find(the_id)
    photo_to_delete.destroy
    redirect_to("/photos")
  end

end
