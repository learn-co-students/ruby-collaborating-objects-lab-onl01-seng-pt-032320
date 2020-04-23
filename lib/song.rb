class Song
  attr_accessor :song_name, :artist

  @@all = []


  def initialize(name)
    @song_name = name
    @@all << name
  end

  def self.all
    @@all
  end
end
