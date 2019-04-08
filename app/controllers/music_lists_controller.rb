class MusicListsController < ApplicationController
  def index
    @music_lists = MusicList.all
  end
end
