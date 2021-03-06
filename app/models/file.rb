class Ingredient
    attr_accessor :name, :calories
    attr_writer :dessert
    @@all = []
    
    def initialize(name, dessert, calories)
        @name = name
        @dessert = dessert
        @calories = calories
        Ingredient.all << self
    end

    def self.all
        @@all
    end
    
    def self.find_all_by_name(ingredient)
        Dessert.all.select do |dessert|
            dessert.name.include? ingredient
        end.map do |dessert|
            dessert.name
        end
    end

    def dessert
        Dessert.all.select do |dessert|
            dessert.ingredients.include? self
        end
    end

    def bakeries
        self.dessert.bakery
    end
end