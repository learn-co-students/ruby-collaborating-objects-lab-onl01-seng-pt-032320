class Song
  attr_accessor :song_name, :songs, :artist

  def initialize(name)
    @song_name = name
    @songs = []
    @songs << name
  end

  def songs
    @songs
  end
end
