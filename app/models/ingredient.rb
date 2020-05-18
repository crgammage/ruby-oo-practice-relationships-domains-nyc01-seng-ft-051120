class Ingredient
    attr_accessor :name, :calories
    
    @@all = []
    
    def initialize(name, dessert, calories)
        @name = name
        @dessert = dessert
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.find_all_by_name(ingredient)
        Ingredient.all.select do |ingredient_instance|
            ingredient_instance.name.include? ingredient.to_s
        end
    end

    def dessert
        Dessert.all.select do |dessert|
            dessert.ingredient == self
        end
    end

    def bakeries
        self.dessert.bakery
    end
end