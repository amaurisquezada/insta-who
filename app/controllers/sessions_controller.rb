class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user), :notice => "Welcome back, #{@user.email}"
    else
      flash[:alert] = "Invalid email or password"
      redirect_to :back
    end
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
  end

  def destroy
    session.clear
    redirect_to root_path
    flash[:alert] = "Bye Bye"
  end
end