class Guest 

    attr_accessor :name 

    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def trips 
        Trip.all.select {|t| t.guest == self}
    end

    def trip_count 
        self.trips.count
    end

    def listings 
        trips.map {|t| t.listing }
    end

    def self.all 
        Guest.all 
    end 

    def self.find_all_by_city(name)
        Guest.all.select {|g| g.name == name } 
    end

    def pro_traveller
        Guest.all.select {|g| g.trip_count > 1}
    end

end 
