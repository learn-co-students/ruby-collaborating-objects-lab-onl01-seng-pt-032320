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

    def self.new_by_filename(file_name)
        songs = file_name.split(" - ")[1]
        artist = file_name.split(" - ")[0]
        songs = self.new(songs)
        # binding.pry
        songs.artist_name = artist
        songs
    end

    def artist_name=(name)
        self.artist= Artist.find_or_create_by_name(name)
        self.artist.add_song(self) 
    end 
end 