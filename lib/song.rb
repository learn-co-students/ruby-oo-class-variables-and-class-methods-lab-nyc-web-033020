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
  @@genres.each do |element|
    if hash[element] 
      hash[element] = 2 
    else 
      hash[element] = 1  
    end 
  end
  hash
end

def self.artist_count
  hash = { }
  @@artists.each do |element|
    if hash[element] 
      hash[element] = 2 
    else 
      hash[element] = 1  
    end 
  end
  hash
end

end
