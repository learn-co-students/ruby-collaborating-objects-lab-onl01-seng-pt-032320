class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song_name)
    song_name.artist = self
  end
  
  def songs
    Song.all.select { |name|
      name.artist == self
    }
  end
  
  def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name } != nil
      self.all.detect {|artist| artist.name == name }
    else
      self.new(name)
    end
  end
  
  def print_songs
    songs.each {|song_name| puts song_name.name}
  end
end