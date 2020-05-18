class Bakery
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        Bakery.all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def ingredients
        desserts.map do |dessert|
            dessert.ingredients
        end
    end

end
