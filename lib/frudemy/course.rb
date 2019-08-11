class Frudemy::Course
    attr_accessor :name, :category, :clicks, :url
    def self.today
        
        self.scraping
    end

    def self.scraping
        courses = []
        
        courses << self.scraping_udemy




        courses
    end

    def self.scraping_udemy
        doc = Nokogiri::HTML(open("https://discudemy.com"))
        binding.pry
    end

end