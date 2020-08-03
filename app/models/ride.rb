class Ride 

    attr_accessor :distance, :passenger, :driver

    @@all = []

    def initialize(distance, driver, passenger)
        @distance = distance 
        @driver = driver 
        @passenger = passenger 
        @@all << self
    end 

    def self.average_distance 
        total_distance = self.sum {|r| r.distance }
        return total_distance / self.count
    end 

end 
