
class Frudemy::Course
 attr_accessor :category_name, :description, :course_name, :url, :category, :date_added, :course

    @@all = []

def self.all
    @@all 
end

def save_it
    @@all  << self
end



 
end
