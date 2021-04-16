class LikesController < ApplicationController
  def create
    
  end
  def new
    @like = Like.new
  end
  def destroy
    like = Like.find(params[:id])
    if like.valid?
    else
      like.delete 
    end
  end
  def 
    
  end
  def 
    
  end
end
