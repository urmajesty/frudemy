
  class Frudemy::Category
    attr_accessor :category_name, :url, :date_added, :description, :course_name, :course
  

      @@all = []    
      

    def initialize(att_hash)
    #  @category_name = att_hash[:category_name]
      att_hash.each do |key, value|
           self.send("#{key}=", value)
    end


      self.save
    end

     
    def save
      @@all << self
     # self
    end

      
    def self.all
      @@all
    end
      

    def course
      Frudemy::Course.all.select do |course|
      course.category == self
    end
  end   
end   
