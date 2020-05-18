class MovieCharacter
    attr_accessor :movie, :character
    @@all = []
    def initialize(movie, character)
        @movie = movie
        @character = character
        MovieCharacter.all << self
    end
    
    def self.all
        @@all
    end
end