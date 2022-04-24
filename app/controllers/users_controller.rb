class UsersController < ApplicationController
  def show
     @user = User.find(params[:id])
      @post_images = @user.post_images.page(params[:page]).reverse_order
  end

  def index
    @users = User.all

  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to user_path(user.id)
  end


 def edit
   @user = User.find(params[:id])

 end


  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end





 private
  def user_params
    params.require(:user).permit(:title, :body, :profile_image)  end

end
