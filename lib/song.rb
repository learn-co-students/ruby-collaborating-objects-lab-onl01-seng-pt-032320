class Song 
    attr_reader :name, :artist
    
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    def name=(name)
        @name = name
    end 

    def artist=(artist)
        @artist= artist
    end
    
    def self.all
        @@all
    end 
end 