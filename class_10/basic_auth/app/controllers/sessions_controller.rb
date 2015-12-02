class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.where(email: params[:session][:email])
    if user.first
      if user.first.authenticate(params[:session][:password])
        redirect_to :success_user
      else
        flash[:error] = "Bad PW"
      end
    else
      flash[:error] = "No such user"
      redirect_to :new_session
    end
  end
  
end
