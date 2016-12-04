class Song
  attr_accessor :artist
  attr_reader :name, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, genre)
    @name = name
    @genre = genre
    @@all << self
    genre.songs << self
  end
end
