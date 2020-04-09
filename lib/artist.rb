require 'pry'
class Artist 
@@all = []

attr_accessor :name
attr_reader :songs

def initialize(name)
 @name = name
 @@all.push(self)
 @songs = []
end

def self.all 
  @@all
end

def songs
    Song.all.select {|song| song.artist == self}
end

def add_song(songs)
 
  songs.artist = self
  @songs.push(songs)
end


# def self.find(name)
#   self.all.detect {|artist| artist.name = name}
# end

# def self.create(name)
#   artist = self.new
#   artist.name = name
#   artist
# end
# This class method should take the name that is passed in (remember, it will be a string), and do one of two things. Find the artist instance that has that name or create one if it doesn't exist. Either way, the return value of the method will be an instance of an artist with the name attribute filled out.

def self.find_or_create_by_name(name)

find_artist = self.all.find do |artist|
  artist.name == name
  end
  
  
  if find_artist
    find_artist
  else
    new_artist = self.new(name)
    new_artist
  end
end

def print_songs
  @songs.each do |song|
   puts song.name
  end
end


end
