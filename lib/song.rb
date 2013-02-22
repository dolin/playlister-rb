require_relative './artist'
require_relative './genre'

class Song
  attr_accessor :name, :artist
  attr_reader :genre

  #create attr_writer and automatically call an add song to genre method
  #in order to add song to songs array in genre
  def genre=(genre_instance)
    @genre = genre_instance
    # genre_instance.songs << self
    add_song_to_genre(genre_instance)
  end

  def add_song_to_genre(genre_instance)
    genre_instance.songs << self
  end

end


