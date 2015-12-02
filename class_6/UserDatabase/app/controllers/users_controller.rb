class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.new
    render "index"
  end

  def edit
    @user = User.find(params[:id])
    render "edit"
  end

  def create
    user = User.create(user_params)
    if user.valid?
      redirect_to "/users"
    else
      flash[:error] = "Invalid entry"
      redirect_to users_path
    end
  end
  
  def update
    user = User.find(params[:id])
    user.update_attributes(user_params)
    redirect_to "/users"
  end
  
  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to "/users"
  end

private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :username, :role)
  end

end
