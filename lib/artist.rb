require_relative './song'

class Artist
  attr_accessor :name, :songs, :genres

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
    @genres = []
  end

  def self.all
    @@artists
  end

  def self.reset_artists
    @@artists = []
  end

  def self.count
    @@artists.size
  end

  def songs_count
    @songs.count
  end

  def add_song(song)
    @songs << song
    @genres << song.genre
    song.genre.artists << self if !song.genre.artists.include?(self)
  end

  def genres
    @genres
  end

end