class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = [ ]
  @@genres = [ ]
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
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
  hash = { }
  @@genres.each_with_index do |element, index|
    element ||= hash[element]
    hash[element] = index
  end
  hash
end

def self.artist_count
  hash = { }
  @@artists.each_with_index do |element, index|
    element ||= hash[element]
    hash[element] = index
  end
  hash
end

end
