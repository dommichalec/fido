class UsersController < ApplicationController
  before_action :require_signin, except: [:new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "Thanks for signing up, #{@user.first_name}!"
      session[:id] = @user.id
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.save
      redirect_to user_path(@user), notice: "Your account has successfully been updated, #{@user.first_name}!"
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    first_name = @user.first_name
    @user.delete && session[:user_id] = nil
    redirect_to root_path, notice: "Sorry to see you go, #{first_name}!"
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
