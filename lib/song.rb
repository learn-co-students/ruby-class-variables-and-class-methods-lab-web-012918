class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists_unique = @@artists.uniq
  end

  def self.genres
    @@genres_unique = @@genres.uniq
  end

  def self.genre_count
    counts = {}
    @@genres.inject(Hash.new(0)) {|name, total| name[total] += 1; name}
  end

  def self.artist_count
    counts = {}
    @@artists.inject(Hash.new(0)) {|name, total| name[total] += 1; name}
  end
end
