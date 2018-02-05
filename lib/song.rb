require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    # binding.pry
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    artists_arr = []
    @@artists.each do |artist|
      artists_arr << artist if !artists_arr.include?(artist)
    end
    artists_arr
  end

  def self.genres
    genre_arr = []
    @@genres.each do |genre|
      genre_arr << genre if !genre_arr.include?(genre)
    end
    genre_arr
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    songs_hash = {}
    @@artists.each do |artist|
      if songs_hash[artist]
        songs_hash[artist] += 1
      else
        songs_hash[artist] = 1
      end
    end
    songs_hash
  end


end
