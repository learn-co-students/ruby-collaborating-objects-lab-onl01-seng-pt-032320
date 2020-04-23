class Song 
  attr_accessor :name, :artist 
  
  @@all = [] 
  def initialize(name, artist = nil)
    @name = name 
    @artist = artist 
    @@all << self 
  end 
    
  def Song.all 
    @@all 
  end 
  
  def Song.new_by_filename(song)
    #binding.pry
    song_string = song.split(" - ")[1]
    song_artist_string = song.split(" - ")[0] #tricky #interview #use descriptive names 
    new_artist = Artist.new(song_artist_string) #making a new artist
    #binding.pry
    song_obj = Song.new(song_string, new_artist) #we want artist to be an actual artist object not just a string 
   song_obj #we want the return of method to be new song obj we created
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) 
    
  end 
  
end 