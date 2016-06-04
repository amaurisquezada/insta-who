class HomeController < ApplicationController



	before_filter :authorize

  # before_action :logged_in_user, only: [:edit, :update]

  # def logged_in_user
  #   unless logged_in?
  #     flash[:danger] = "Please log in"
  #     redirect_to login_url
  #   end
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    if @user.save
      log_in @user
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def delete
  end

  def destroy
    User.where(id: params[:id]).each do |user|
        user.delete
      end
    redirect_to root_path
    flash[:alert] = "Your account has been destroyed"
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User updated successfully"
      redirect_to user_path(@user)
    else
      flash[:alert] = "Update failed"
      render :edit
    end
  end

  def test
  end

  def show
    current_user
    @user = User.find(current_user.id)
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  end















	
  # def home
  # 	@user = User.new
  #   @users = User.all
  # end

  # def show 
  # 	@user = User.new(user_params)
  # end  

  # def new
  #   @user = User.new
  # end


  # def create
  #   @user = User.new(user_params)
  #   @user.save
  #   if @user.save
  #     log_in @user
  #     redirect_to user_path(@user)
  #   else
  #     render 'new'
  # end

  # end

  # private

  # def user_params
  # 	params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  # end
end
