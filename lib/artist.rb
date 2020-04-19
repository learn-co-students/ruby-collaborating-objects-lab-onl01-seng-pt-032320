class Artist

@@all = []



attr_accessor :name
attr_reader :songs


  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all

    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name}
    if artist == nil
      artist = Artist.new(name)
    end
    artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
