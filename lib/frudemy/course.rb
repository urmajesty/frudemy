
class Frudemy::Course

       attr_accessor :title, :category, :url
   def self.today
       
       self.scraping
   end
   def self.scraping
       courses = []
       
       courses << self.scraping_udemy
       courses
      
   end
   def self.scraping_udemy
       doc = Nokogiri::HTML(open("https://www.discudemy.com/all"))
   
       
       
       course = self.new
       course.category = doc.search("img.ui.avatar.image").first.attr("alt")
    binding.pry
      
       course
      
   
   end
end 