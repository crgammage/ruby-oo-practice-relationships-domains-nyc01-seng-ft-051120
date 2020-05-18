class Show
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Show.all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
         Movie.all.select do |movie|
            movie.name == self.name
            end
    end
   
    def characters
        ShowCharacter.all.select do |sc|
            sc.show == self
        end.map do |sc|
            sc.character
        end
    end
    
    def actors 
        actors = characters.map do |character|
            character.actor
        end
        actors.uniq
    end
        
end