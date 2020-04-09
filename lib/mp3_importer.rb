class MP3Importer

    attr_accessor :path, :files

    def initialize(path)
        @path = path
    end

    def import
        files
        @files.each do |file|
            song = Song.new_by_filename(file)
        end
    end

    def files
        @files = Dir.entries(@path)
        mp3_files = Array.new
        @files.each do |file|
            if File.extname(file) == ".mp3"
                mp3_files << file
            end
        end
        @files = mp3_files
    end
end