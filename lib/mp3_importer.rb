class MP3Importer
attr_accessor :filepath, :path

def initialize(path)
  @path = path
end

def files
   file_array =  Dir.glob("#{path}/*.mp3")
  file_array.collect do |file| #collect returns array
    file.slice!("#{path}/") #slice takes the #{path} as an argument
    file #use the iteration file from the collect condition on line 10 to return the updated data
  end
end

def import
       files.each do |file| #iterate over the updated "file" from the previous method
         Song.new_by_filename(file) #Use the Song class and the new_by_filename method from song.rb and pass in the file being iterate
         #from the updated result of the previous method
        end
 end



end
