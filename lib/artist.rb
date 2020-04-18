class Artist
    
    attr_accessor :name, :songs


    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def self.all 
      @@all
    end

    def add_song(song)
        @songs << song
    end

    def self.find_or_create_by_name(name)
        
        #found_artist =
        if self.find(name)
           self.find(name)             # dryer, cleaner self.find(name)? self.find(name) : self.new(name)
              else
             Artist.new(name)
    
        end
    end 


# self.find(name)? self.find(name) : self.new(name)
    

def self.find (name)
        self.all.find {|artist|artist.name == name}
        
    end

        def print_songs
            puts @songs.map {|song| song.name}
        end

      

    
        
     

end