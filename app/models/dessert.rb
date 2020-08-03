class Dessert 

    @@all = [] 

    def initialize(name, bakery)
        @@all << self 
        @name = name 
        @bakery = bakery
    end 

    def ingredients 
        Ingredient.all.select {|i| i.dessert == self}
    end 

    def calories 
        self.ingredients.sum {|i| i.calorie_count } 
    end 

    def self.all 
        @@all
    end 

end 