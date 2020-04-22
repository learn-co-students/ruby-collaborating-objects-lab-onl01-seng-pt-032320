require 'pry'

class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song_obj)
    song_obj.artist = self
  end
  
  def songs
    Song.all.select{|song_obj| song_obj.artist == self}
  end
  
  def self.find_or_create_by_name(artist_name)
    artist = Artist.all.find{|artist_obj| artist_obj.name == artist_name}
    if artist
      artist
    else
      Artist.new(artist_name)
    end
  end

  def print_songs
    Song.all.each{|song_obj| puts song_obj.name if song_obj.artist == self}
  end
end