class UsersController < ApplicationController
  def show
     @user = User.find(params[:id])
  end

  def index
    @users = User.all

  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to user_path(user.id)
  end


 def





 private
  def user_params
    params.require(:user).permit(:title, :body, :image)  end

end
