class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

    def initialize (title, artist, genre)
      @name = title
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << genre
      @@artists << artist
    end

    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq
    end

    def self.artists
      @@artists.uniq
    end

    def self.genre_count
      @@genres.each{|genre|
        if @@genre_count.include?(genre)
          @@genre_count[genre]+= 1
        else
          @@genre_count[genre] = 1
        end
      }
      @@genre_count
    end

    def self.artist_count
      @@artists.each{|artist|
        if @@artist_count.include?(artist)
          @@artist_count[artist]+= 1
        else
          @@artist_count[artist] = 1
        end
      }
      @@artist_count
    end

end
