class MP3Importer
attr_accessor :filepath, :path

def initialize(path)
  @path = path
end

def files
file_array = Dir.glob('#{path}/*.mp3').each do {|file| }
  
puts file
end


end
