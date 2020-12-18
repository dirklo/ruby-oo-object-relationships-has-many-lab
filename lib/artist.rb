class Artist 
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
        self.songs << song if !self.songs.include?(song)
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        count = 0
        all.each{|artist| count += artist.songs.length}
        count
    end
end