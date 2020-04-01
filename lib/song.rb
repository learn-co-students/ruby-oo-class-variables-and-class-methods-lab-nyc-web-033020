class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count +=1
        @@artists << @artist
        @@genres << @genre

    end

    def self.count
        @@count
    end
    
    def self.uniquify(master)
        unique = []
        master.map do |cat, count|
            unless unique.find {|item| item==cat}
            unique << cat
            end
        end
        unique
    end

    def self.countify(master)
        count = {}
        master.map do |cat|
            if count[cat]
                count[cat]+=1
            else
                count[cat]=1
            end
        end
        count
    end


    def self.genres
        self.uniquify(@@genres)
    end

    def self.artists
        self.uniquify(@@artists)
       # unique = []
       # @@artists.map do |artist, count|
        #    unless unique.find {|item| item==artist }
       #         unique << artist
        #    end
       # end
       # unique
    end

    def self.genre_count
        self.countify(@@genres)
       # genre_count = {}
     #   @@genres.map do |genre, count|
       #     if genre_count[genre]
         #       genre_count[genre]+=1
       #     else
       #         genre_count[genre]=1
        #    end
       # end
       # genre_count
    end

    def self.artist_count
        self.countify(@@artists)
    end

end