class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      if !genres_hash.has_key?(genre)
        genres_hash[genre] = 1
      else
        genres_hash[genre] += 1
      end
    end
    genres_hash
  end


  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if !artist_hash.has_key?(artist)
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end
    artist_hash
  end

end
