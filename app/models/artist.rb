class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first 
  end

  def song_count
   self.songs.count 
  end

  def genre_count
    genres = self.songs.collect do |song| 
      song.genre 
    end 
    genres.compact.count 
  end
end
