class MusicListsController < ApplicationController
  def index
    @music_lists = MusicList.all
  end

  def new
    @music_list = MusicList.new
    render :form
  end

  def show
    @music_list = MusicList.find(params[:id])
  end

  def create
    music_list = MusicList.new(music_list_parameters)
    music_list.user_id = current_user.id
    if music_list.save
      redirect_to music_list_path(music_list)
    else
      p music_list.errors
      redirect_to root_path
    end
  end

  def destroy
    @music_list = MusicList.find(params[:id])
    @music_list.destroy

    redirect_to :action => :index
  end


  def music_list_parameters
    params.require(:music_list).permit(:nombre_cancion, :url)
  end
end
