class MemoriesController < ApplicationController


  def index
    @memories = Memory.all
  end


  def new
    @photo = Photo.find(params[:photo_id])
    @memory = Memory.new
    authorize! :new, @memory
  end


  def create
    @memory = Memory.new(params[:memory])
    @memory.photo_id = params[:photo_id]
    @memory.user_id = current_user.id
    if @memory.save
      redirect_to @memory.photo, notice: "Memory created successfully!"
    else
      flash[:alert] = "Memory NOT created!"
      render :new
    end
    authorize!(:create, @memory || Memory)
  end


  def show
    @memory = Memory.find(params[:id])
  end


  def edit
    @memory = Memory.find(params[:id])
  end


  def update
    # memory = Memory.find(params[:id])
    memory.update_attributes(params[:memory])
    redirect_to(memory)
    authorize! :update, memory
  end


  def destroy
    memory = Memory.find(params[:id])
    memory.delete
    authorize! :destroy, memory
    # redirect_to(memory.photo), notice: "Memory successfully DELETED!!!"
  end


end
