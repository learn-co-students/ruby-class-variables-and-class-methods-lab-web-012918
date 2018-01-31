class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 # why not @@count++
    @@artists << artist
    @@genres << genre
    #
    # @@genres << genre unless @@genres.include?(genre)
    # @@artists << artist unless @@artists.include?(artist)
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
    hash = {}
    @@genres.each{ |genre|
      if hash[genre]== nil
        hash[genre] = 1
      else
        hash[genre] +=1
      end
    }
    hash
  end

  def self.artist_count

      hash = {}
      @@artists.each{ |artist|
        if hash[artist]== nil
          hash[artist] = 1
        else
          hash[artist] +=1
        end
      }
      hash
  end






end
