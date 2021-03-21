class LikesController < ApplicationController
  def create
    
  end
  def new
    @like = Like.new
  end
  def destroy
    like = Like.find(params[:id])
    if like.valid?
      like.save
    end
    like.delete
  end
end
