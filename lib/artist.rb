class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(artist_name)
   already = self.all.find{|artist| artist.name == artist_name}
    if already
      already
    else
      new_artist = self.new(artist_name)
      new_artist
    end
  end
  
  def print_songs
    @songs.each{|song| puts "#{song.name}"}
  end
  
end