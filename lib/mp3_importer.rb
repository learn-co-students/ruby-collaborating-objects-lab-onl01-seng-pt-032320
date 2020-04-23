class MP3Importer
  
  attr_accessor :path
  
  
  def initialize(filepath)
  #Action Bronson - Larry Csonka - indie.mp3
  #Artist" - "Song" - "Genre.mp3
    @path = filepath
  end
  
  def files
    Dir.entries(@path).reject{|filename| filename=="." ||filename==".."}
  end
  
  def import
    files.each{|file| Song.new_by_filename(file.split(" - ")[1])}
  end
end