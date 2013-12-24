class LocationsController < ApplicationController

  def new
    @photo = Photo.find(params[:photo_id])
    @location = Location.new
  end

  def create
    @location = Location.new(params[:location])
    @location.photo_id = params[:photo_id]
    @location.user_id = current_user.id
    if @location.save
      redirect_to @location.photo
    else
      flash[:alert] = "Memory NOT created!"
      render :new
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])
  end


  def update
    # memory = Memory.find(params[:id])
    location.update_attributes(params[:location])
    redirect_to(location)
  end


  def destroy
    location = Location.find(params[:id])
    location.delete
    # redirect_to(memory.photo), notice: "Memory successfully DELETED!!!"
  end

end
