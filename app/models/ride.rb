class Ride
    attr_accessor :passenger, :driver, :distance
    @@all = []
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        Ride.all << self
    end
    
    def self.all
        @@all
    end

    def self.average_distance
        total_distance = 0.0
        Ride.all.select do |ride|
            total_distance += ride.distance
        end
        total_distance / Ride.all.count
    end
end