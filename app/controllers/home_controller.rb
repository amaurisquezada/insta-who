class HomeController < ApplicationController
  def home
  	@user = User.new
    @users = User.all
  end

end
