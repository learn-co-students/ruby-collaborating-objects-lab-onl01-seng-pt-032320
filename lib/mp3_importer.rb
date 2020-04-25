require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
  end

def files
  files = Dir.glob("#{@path}/*.mp3")
  files.each do |path|
    path.gsub!('./spec/fixtures/mp3s/', '')
end
end

def import
  a = self.files
  a.each do |file|
  Song.new_by_filename(file)
end
end
end
