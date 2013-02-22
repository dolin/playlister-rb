require_relative './artist'
require_relative './song'

class Genre
  attr_accessor :name, :songs, :artists

  def initialize
    @songs = []
    @artists = []
  end

end