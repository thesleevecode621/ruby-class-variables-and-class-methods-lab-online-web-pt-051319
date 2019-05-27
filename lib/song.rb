class Song

  attr_accessor :name, :artist, :genre

  @@song_count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genre << @genre
    @@artist << @artist
    @@song_count +=1
  end

  def self.count
    @@song_count
  end

  def self.genres
    @@genre.uniq
  end

  def self.artists
    @@artist.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genre.each do |genre| 
      if genre_count[genre]
      genre_count[genre] += 1 
      else
      genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artist.each do |artist|
      if artist_count[artist]
      artist_count[artist] +=1
      else
      artist_count[artist] = 1
      end
    end
    artist_count
  end

end