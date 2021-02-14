class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC")
  end
  def index
    @users = User.all
    @posts = Post.all
  end
end
