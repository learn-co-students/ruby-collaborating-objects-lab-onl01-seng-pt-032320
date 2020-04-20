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