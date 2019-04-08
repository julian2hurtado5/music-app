class MusicList < ApplicationRecord
  belongs_to :user
  validates :url, presence: true
  validates :nombre_cancion, presence: true
end
