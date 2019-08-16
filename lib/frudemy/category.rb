
class Frudemy::Category
    attr_accessor :title, :url, :details 
  
#    def initialize
#    end
#  end

  #     class Frudemy::Category
#        attr_accessor :title, :views, :url,  
#        attr_reader :details

      @@all = []    

       def initialize(att_hash)
                  @title = att_hash[:title]
#          #@views = att_hash[:views]
#      
          att_hash.each do |key, value|
            self.send("#{key}=", value)
          end
#          @details = []
         self.save
        end
#      
        def save
          @@all << self
          self
        end
      
        def self.all
          @@all
        end
#      
       def add_detail(det)
          @details << det
          det.category = self
     end
      def courses
        Course.all.select do |course|
          course.category == self
        end
      end
#      
      end   
##
##       attr_accessor :title, :category, :url
##   def self.today
##       
##       self.scraping
##   end
##   def self.scraping
##       categorys = []
##       
##       categorys << self.scraping_udemy
##       categorys
##      
##   end
##   def self.scraping_udemy
##       doc = Nokogiri::HTML(open("https://www.discudemy.com/all"))
##   
##       
##       
##       category = self.new
##       category.category = doc.search("img.ui.avatar.image").first.attr("alt")
##    binding.pry
##      
##       category
##      
##    
##   end
#end 