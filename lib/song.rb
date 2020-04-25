class Song
attr_accessor :name, :artist
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  self.artist.add_song(self)
end

def self.new_by_filename(file_name)
    file_name.slice!(/.mp3/)
    song_array = file_name.split(" - ")
    artist = Artist.new(song_array[0])
    song = self.new(song_array[1])
    song.artist_name = artist
    song
end

end
