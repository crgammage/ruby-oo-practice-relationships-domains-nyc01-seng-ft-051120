class Driver
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Driver.all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passengers
        rides.map do |ride|
            ride.passenger
        end
    end

    def self.mileage_cap(distance)
        Ride.all.select do |ride|
           if ride.distance > distance
            ride.driver
           end
        end
    end

end