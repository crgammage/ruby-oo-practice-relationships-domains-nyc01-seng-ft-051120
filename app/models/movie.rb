class Movie
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        Movie.all << self
    end

    def self.all
        @@all
    end

    def self.most_actors
        actors = 0
        max_movie = nil
        Movie.all.each do |movie|
            if movie.actors.count > actors
                actors = movie.actors.count
                max_movie = movie
            end
        end
        max_movie
    end

    def characters
        MovieCharacter.all.select do |mc|
            mc.movie == self
        end.map do |mc|
            mc.character
        end
    end

    def actors 
        actors = characters.map do |character|
            character.actor
        end
        actors.uniq
    end      
end