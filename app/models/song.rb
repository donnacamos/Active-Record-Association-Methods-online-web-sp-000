class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name 
  end

  def drake_made_this
    self.song.artist 
  end
end