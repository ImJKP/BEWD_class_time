class UsersController < ApplicationController

  def index
    @users = User.all
    render "index"
  end

  def edit
    render "edit"
  end

end
