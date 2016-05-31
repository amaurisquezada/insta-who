class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def delete
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def test
  end

  def show
    current_user
    @user = User.find(current_user.id)
  end

  def index
    @user = User.new
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :avatar)
  end
end
