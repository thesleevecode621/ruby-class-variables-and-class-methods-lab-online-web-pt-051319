class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@count +=1
  end
  def self.count
    @@count
  end
  def self.genre
     @@genres.uniq 
   end
   def self.artist
     @@artist.uniq
   end
   def self.genre_count
     genre_count = {}
    @@genres.each do |gen|
    if
      genre_count[gen] += 1 
    else 
      genre_count = 1 
    end 
    genre_count
end
def self.artist_count
  artist_count = {}
  @@artist.each do |art|
    if 
      artist_count[art] +=1
    else 
      artist_count[art] = 1 
    end
    artist_count
  end 
end 
