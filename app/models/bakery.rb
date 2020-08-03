class Bakery 

    attr_accessor :name 
   
    @@all = [] 

    def initialize(name)
        @name = name
    end 

    def ingredients 
      self.desserts.map {|d| d.ingredients}
    end 

    def desserts 
        Dessert.all.select {|d| d.bakery == self}
    end 

    def average_calories 
        total_calories = self.ingredients.sum {|i| i.calorie_count }
        return total_calories / self.desserts.count
    end 

    def self.all 
        @@all 
    end 

    def shopping_list 
        self.ingredients.map {|i| i.name }
    end 

end 