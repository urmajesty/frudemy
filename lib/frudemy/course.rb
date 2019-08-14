     class Frudemy::Course
        attr_accessor :title, :views, :critic, :url, :directed_by, :id
        attr_reader :details
        @@all = []
      
        def initialize(att_hash)
         # @title = att_hash[:title]
          #@views = att_hash[:views]
      
          att_hash.each do |key, value|
            self.send("#{key}=", value)
          end
          @details = []
          self.save
        end
      
        def save
          @@all << self
          self
        end
      
        def self.all
          @@all
        end
      
        def add_detail(rev)
          @details << rev
          rev.course = self
        end
      
      
      
      end   
#
#       attr_accessor :title, :category, :url
#   def self.today
#       
#       self.scraping
#   end
#   def self.scraping
#       courses = []
#       
#       courses << self.scraping_udemy
#       courses
#      
#   end
#   def self.scraping_udemy
#       doc = Nokogiri::HTML(open("https://www.discudemy.com/all"))
#   
#       
#       
#       course = self.new
#       course.category = doc.search("img.ui.avatar.image").first.attr("alt")
#    binding.pry
#      
#       course
#      
#    
#   end
#end 