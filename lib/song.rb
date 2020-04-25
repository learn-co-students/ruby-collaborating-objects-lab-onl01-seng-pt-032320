class Song
attr_accessor :name
attr_reader :artist
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def artist=(artist)
  @artist = artist
end

def self.new_by_filename(file_name)
    file_name.slice!(/.mp3/)
    song_array = file_name.split(" - ")
    artist = Artist.new(song_array[0])
    artist.add_song(song_array[1])
    song = self.new(song_array[1])
    song.artist = artist
    song
end

end
