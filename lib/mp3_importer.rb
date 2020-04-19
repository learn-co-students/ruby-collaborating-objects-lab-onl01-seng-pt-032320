class MP3Importer

  attr_reader :path, :files

  def initialize(file_path)
    @path = file_path
    @files = Dir.children(file_path).collect{ |file| file.split("/").last }
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
