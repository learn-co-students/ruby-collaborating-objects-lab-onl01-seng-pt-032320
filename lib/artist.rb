
#require 'pry'
class Artist
  attr_accessor :name, :songs , :artist
  @@all = []
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    #@artist= artist 
    @@all<< self
    #binding.pry
  end
  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end
  
  def songs
  Song.all.select do |song| 
    song.artist == self 
    end 
  end
  
    def self.all 
      @@all
    end
    
  
  
  def self.find_or_create_by_name(name)
		@@all.each  do |artist|
			if artist.name == name 
				 return self
			end 
		end 
		
		self.new(name)
			
	end 
    
 
  def self.song_count
  Song.all.length
  end
  
   def print_songs
     self.songs.each {|song| puts song.name} 
   end
end