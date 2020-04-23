require "pry"
class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
   file_array =  Dir.glob("#{path}/*.mp3")
  file_array.collect do |file| #collect returns array 
    file.slice!("#{path}/")
    file 
    
  end 
end 
  
 def import 
       files.each do |file|
         Song.new_by_filename(file) 
             #binding.pry
      #song.new 
        end 
 end 
  
end 