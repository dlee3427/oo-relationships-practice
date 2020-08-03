class Passenger 

    attr_accessor :name 
    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def rides 
        Ride.all.select {|r| r.passenger == self}
    end 

    def drivers 
        self.rides.map {|r| r.drivers }
    end 

    def self.all 
        Passenger.all
    end 

    def total_distance 
        self.rides.sum {|r| r.distance}
    end 

    def self.premium_members 
        self.rides.select { |r| r.distance > 100 }
    end 

end 