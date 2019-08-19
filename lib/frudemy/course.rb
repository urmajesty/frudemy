
class Frudemy::Course
 attr_accessor :category_name, :views, :details, :url, :category, :name

    @@all = []

def self.all
    @@all 
end

def save_it
    @@all  << self
end



 
end
