class Song

@@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  attr_reader :artist
  def artist=(artist)
    @artist = artist
    artist.songs << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    filename_split = filename.split(" - ")
    name = filename_split[1]
    artist_name = filename_split[0]
    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end

  def artist_name=(artist_name)
    @artist_name = artist_name
    self.artist = Artist.find_or_create_by_name(artist_name)
  end
end
