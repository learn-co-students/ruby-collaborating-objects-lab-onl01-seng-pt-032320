class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    songname = (filename.split(/ - |.mp3/)[1])
    newsong = Song.new(filename.split(/ - |.mp3/)[1])
    newsong.artist = filename.split(/ - |.mp3/)[0]
    newsong.artist = Artist.new(newsong.artist)
    newsong
  end
  
  
  def artist_name=(artistname)
    self.artist = Artist.find_or_create_by_name(artistname)
    self.artist.add_song(self)
  end
  
end
      
  