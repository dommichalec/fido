class SessionsController < ApplicationController

  def new
  end

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back, #{user.first_name}!"
      redirect_to user_path(user)
    else
      flash.now[:notice] = "Oops! That email/password combo doesn't match our records."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
    flash[:notice] = "Thanks for stopping by!"
  end
end
