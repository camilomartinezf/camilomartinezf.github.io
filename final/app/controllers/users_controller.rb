
class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    # do something with params[:id]
    @users = User.find_by(id: params["id"])
  
  end

  def new
    @users = User.new
  end


  def create
      users_params = params.require(:user).permit(:user_name)
    User.create(users_params)
    redirect_to users_path
  end


  def edit
     @users = User.find_by(id: params["id"])
    
  end


  def update
    users_params = params.require(:user).permit(:user_name)
    @users = User.find_by(id: params["id"])
    @users.update(users_params)
    redirect_to users_path
  end

  def destroy
    @users = User.find_by(id: params["id"])
    @users.destroy
    redirect_to users_path  
  end
end
