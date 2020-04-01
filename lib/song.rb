class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
    end

    def count
        @@count
    end

    def genres
        @@genres.uniq
    end

    def artists
        @@artists.uniq
    end

    def genre_count
        genre_count = {}
    end
end