require 'pry'
class Artist
attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @songs = [] #Here the song instance will collect the songs from the add_song(song) method below and then associate it with the the Song class
#binding.pry
end

def self.all
  @@all
end

def add_song(song) #The song argument has the songs that will be added to the @songs method.
@songs << song
#binding.pry

end

def self.find_or_create_by_name(artist_name)

   found = self.all.find do |artist|
     artist.name == artist_name
   end
   #binding.pry

  if found
    return found
  else
    Artist.new(artist_name)
    #create artist
  end

end

def print_songs
songs.each do |song|
puts song.name
end
end


end
