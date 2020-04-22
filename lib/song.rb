class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song = Song.new(filename.split("-")[1].strip)
    song.artist = filename.split("-")[0].strip
  end
  
end