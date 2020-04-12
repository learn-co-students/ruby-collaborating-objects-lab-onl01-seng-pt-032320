class Song
  
  attr_accessor :genre, :name, :artist, :artist_name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def save 
    @@all << self
    self
  end 

  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end 
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
  def self.new_by_filename(filename)
    artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
    bw = Song.new(song_name)
    bw.artist = Artist.find_or_create_by_name(artist_name)
    bw.genre = genre_name
    bw.save
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
      @@all << self.artist.name
    else
      self.artist.name = name
    end
  end
  

end