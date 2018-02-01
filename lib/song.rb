class Song
  attr_accessor :name, :artist, :genre
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  @@count = 0
  @@artists = []
  @@genres = []

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
    genre_counts = Hash.new(0)
    @@genres.each do |el|
      genre_counts[el] += 1
    end
    genre_counts
  end

  def self.artist_count
    artist_counts = Hash.new(0)
    @@artists.each do |el|
      artist_counts[el] += 1
    end
    artist_counts
  end
end
