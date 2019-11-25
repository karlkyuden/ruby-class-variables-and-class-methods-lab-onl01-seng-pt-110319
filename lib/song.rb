class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def genre_count
    genre_hash = Hash.new
    @@genres.uniq.each { | genre | genre_hash[genre] == @genres.reduce(0) { |memo, element|
    memo += 1 if element == genre
    memo
    }
    }
    
    genre_hash
  end

  
  
end