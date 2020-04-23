class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(name)
    Song.new(name)
  end

  def self.all
    @@all
  end
end
