class VideosController < ApplicationController
  def index
    @videos = Video.all
  end
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    binding.pry
    if @video.save
      redirect_to videos_path
    else
      render action: :new
    end
    
  end

  def show
    @video = Video.find(params[:id])
  end


  private

  def video_params
    params.require(:video).permit(:title, :introduction, :video)
  end
end
# .merge(user_id: current_user.id)