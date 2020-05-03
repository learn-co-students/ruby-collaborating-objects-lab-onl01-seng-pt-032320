class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path 
  end
  
  def files
    @files = Dir.entries(path).select do |song|
      song.end_with?(".mp3")
    end 
  end 
  
  def import 
    files.each do |file|
      Song.new_by_filename(file)
    end
  end 
end