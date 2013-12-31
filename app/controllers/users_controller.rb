class UsersController < ApplicationController

  # @photos = @user.photos
  def dashboard
    if current_user
      @photos = current_user.photos
    else
      redirect_to :new_user_session
    end
  end

  def index
    @users = User.all
    @users -= [current_user]
  end

  def show
    @user = User.find(params[:id])
    authorize! :show, @user
  end

  def edit
    @user = User.find(params[:id])
    authorize! :edit, @user
  end

  def destroy
    user = User.find(params[:id])
    authorize! :destroy, user
    user.delete
    redirect_to users_path
  end

  def journey
    user = User.find(params[:id])
    @photos = user.photos.includes(:location)
    @locations

    # render :partial => 'journey'
  end

  def like
    success = false
    if current_user.present?
      success = true if Favourite.create(user_id: current_user.id, photo_id: params[:photo_id])
    end
    render json: {:success => success}
  end
end
