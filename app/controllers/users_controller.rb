class UsersController < ApplicationController
  
  layout "layout_user"
  
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    datos_usuario = params[:id]

    
  end

  def edit
  end

  def update
  end

  def delete
  end
end
