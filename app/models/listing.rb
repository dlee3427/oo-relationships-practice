class Listing 

    @@all = [] 

    def initialize(city, type)
        @city = city 
        @type = type 
        @@all << self
    end

    def guests 
        Listing.all.select {|listing| listing.guest }
    end
    
    def trips 
        Trip.all.select {|t| t.listing == self}
    end 

    def trip_count 
        self.trips.count
    end

    def self.all 
        @@all
    end 

    def self.find_all_by_city(city)
        Listing.all.select {|l| l.city == city}
    end

    def self.most_popular 
        Listing.all.max_by {|l| l.trip_count }
    end 

end 
