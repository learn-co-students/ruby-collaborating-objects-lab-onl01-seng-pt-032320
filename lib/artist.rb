class Artist
  
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self
  end 
  
  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist = self
  end
  
  def save 
    @@all << self
    self
  end 
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) || self.create_by_name(name)
  end
  
  def self.find(name)
    @@all.detect do |artist|
      artist.name == name
    end 
  end
  
  def self.create_by_name(name)
    artist = Artist.new(name).save
  end
  
  def print_songs 
    @songs.each do |g| 
      puts g.name
    end
  end 
  
end 