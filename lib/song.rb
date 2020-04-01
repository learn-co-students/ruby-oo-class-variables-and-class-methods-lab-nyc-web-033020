require 'pry'
class Song

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name =name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end
    attr_accessor :name, :artist, :genre

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |key|
            if hash[key] == nil
                hash[key] = 1
            else
                hash[key] += 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |key|
            if hash[key] == nil
                hash[key] = 1
            else
                hash[key] += 1
            end
        end
        hash
    end
end