class LikesController < ApplicationController
  def create
    
  end
  def new
    @like = Like.new
  end
  def destroy
    like = Like.find(params[:id])
    if 
      
    end
    like.delete
  end
  def
  end
end
