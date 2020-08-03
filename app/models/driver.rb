class Driver 

    attr_accessor :name 
    @@all = [] 

    def initialize(name) 
        @name = name
        @@all << self 
    end 

    def rides 
        Ride.all.select {|r| r.driver == self }
    end 

    def passengers 
        self.rides.map {|p| p.passengers }
    end 

    def self.all 
        @@all 
    end 

    def self.mileage_cap(distance)
        self.rides.map {|r| r.distance > distance }
    end 


end 