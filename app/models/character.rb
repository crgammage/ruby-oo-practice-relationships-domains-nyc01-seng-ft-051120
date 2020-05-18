class Character
    attr_accessor :name, :actor
    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        Character.all << self
    end

    def self.all
        @@all
    end
    
    def movies
        movies = []
        MovieCharacter.all.each do |movie|
            if movie.character == self
                movies << movie.movie
            end
        end
        movies
    end

    def shows
        shows = []
        ShowCharacter.all.each do |show|
            if show.character == self
                shows << show.show
            end
        end
        shows
    end

    def total_count
        total_count = movies.count + shows.count
        total_count
    end

    def self.most_appearances
        Character.all.max_by do |character|
            character.total_count
        end
    end
end