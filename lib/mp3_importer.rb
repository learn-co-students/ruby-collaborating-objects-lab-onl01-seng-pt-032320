require 'pry'
class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("#{@path}/*.mp3").map {|mp3| mp3.gsub("./spec/fixtures/mp3s/", "")}
  end
  
  def import(list)
    list.each{|file| Song.new_by_filename(file) }
  end
end