class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to posts_path
    else
      render action: :new
    end
  end
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def delete
    
  end
  private
  def post_params
    params.require(:post).permit(:title,:text).merge(user_id: current_user.id)
  end
end
