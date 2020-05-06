require 'pry'
class Song
attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @artist = nil
end

def self.all
  #binding.pry
  @@all
end

def self.new_by_filename(file_name)
#binding.pry
music = Song.new(file_name.split(" - ")[1])
music.artist_name = file_name.split(" - ")[0]
music
#binding.pry
end

def artist_name=(name)
self.artist = Artist.find_or_create_by_name(name) #to access a method from another class, i need to use the actual class name or the instance that class before invoking the mthod.
self.artist.add_song(self)

end

end
