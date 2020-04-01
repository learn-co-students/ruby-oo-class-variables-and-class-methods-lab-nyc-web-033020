require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists = @@artists.uniq
    end

    def self.genres
        @@genres = @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
            while @@genres do |genre|
                if genre
                    genre_hash[genre] += 1
                else
                    genre_hash[genre]
                end
            end
        genre_hash
    end

    def self.artist_count
        # artist_hash = Hash.new
        # @@artist_count
    end

end