require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("#{@path}/*.mp3").map {|mp3| mp3.gsub("#{path}/", "")}
  end
  
  def import(list)
    list.each{|file| Song.new_by_filename(file) }
    binding.pry
  end
  
  def import(list_of_filenames)
    list_of_filenames.each{ |file| Song.new_by_filename(file) }
  end
end