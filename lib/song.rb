class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    histogram = {}
    @@genres.each do |genre|
      if histogram[genre] == nil
        histogram[genre] = 1
      else
        histogram[genre] += 1
      end
    end
    histogram
  end

  def self.artist_count
    histogram = {}
    @@artists.each do |artist|
      if histogram[artist] == nil
        histogram[artist] = 1
      else
        histogram[artist] += 1
      end
    end
    histogram
  end




end
