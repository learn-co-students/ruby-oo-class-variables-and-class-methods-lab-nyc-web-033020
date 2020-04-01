class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count
    @@artist_count

    def initialize (name, artist, genre)
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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        songs_in_genre = {}
        @@genres.each do |genre|
            if !songs_in_genre[genre]
                songs_in_genre[genre] = 1
            else
                songs_in_genre[genre] += 1
            end
        end
        songs_in_genre
    end

    def self.artist_count
        artists_songs = {}
        @@artists.each do |artist| 
            if !artists_songs[artist]
                artists_songs[artist] = 1
            else
                artists_songs[artist] += 1
            end
        end
        artists_songs
    end
    

end
