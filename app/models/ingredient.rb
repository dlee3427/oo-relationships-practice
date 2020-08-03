class Ingredient 

    attr_accessor :calorie_count, :name, :dessert

    @@all = []

    def initialize(name, dessert, calorie_count)
        @name = name 
        @dessert = dessert
        @calorie_count = calorie_count
        @@all << self 
    end


    def bakery
        self.dessert.bakery
    end

    def self.all 
        @@all 
    end 

    def self.find_all_by_name(ingredient)
        Ingredient.all.select {|i| i.name == ingredient}
    end

end 