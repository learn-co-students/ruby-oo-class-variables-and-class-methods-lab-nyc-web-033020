class Song
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.each_with_object(Hash.new) do |genre, new_hash|
            if new_hash[genre]
                new_hash[genre] += 1
            else
                new_hash[genre] = 1
            end
        end
    end
    
    def self.artist_count
        @@artists.each_with_object(Hash.new) do |artist, new_hash|
            if new_hash[artist]
                new_hash[artist] += 1
            else
                new_hash[artist] = 1
            end
        end
    end
end