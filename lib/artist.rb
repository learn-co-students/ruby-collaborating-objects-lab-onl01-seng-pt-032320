class Artist 
  attr_accessor :name 
  @@all = []             #empty array #take instance and put into array 
  def initialize(name)
    @name = name 
    @@all << self               #we put instance (artist self) into array 
  ##@@all.push
  end 
  
   def self.all
     @@all
   end 
   
   def add_song(song) 
     song.artist = self 
     
   end 
   
   def songs 
     Song.all.select do |song| 
       song.artist == self 
      end 
  end 
  
  def self.find_or_create_by_name(arist)
    art = @@all.find {|a| a.name  == arist}#we stored the instance in the variabe 
    if art 
      return art
    else 
      return self.new(arist)
  end 
end 
  
  def print_songs
  Song.all.select do |song| #have instance inside pipes 
   if song.artist == self 
    puts "#{song.name}"
  end 
 end   
end 

end 
##take instance of song and calling the attribtue accessor of song class #self means the instance of the artist #self is the artist instance 
##received an instance aka argument