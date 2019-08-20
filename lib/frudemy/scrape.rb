class Frudemy::Scrape

    def self.scrape_categories

      index_page = Nokogiri::HTML(open("https://www.discudemy.com/category"))
        
       cat_array = index_page = index_page.css("section.segment a.mb5")

         cat_array.each do |cat_card|
                
            attributes = {
    
                category_name: cat_card.text.strip

            } 
            category = Frudemy::Category.new(attributes)
        end
    end
 


   def self.scrape_courses(category)
    
    doc = cat_page = Nokogiri::HTML(open("https://discudemy.com/category/#{category.category_name}"))

        course_cards = cat_page.css('section.card')

            course_cards.each do |card|
            
            
            course = Frudemy::Course.new
            
            course.course_name = card.css("a.card-header").text
            course.url = doc.search("a.card-header").first.attr("href")
            course.date_added = card.css("div.label").text
            course.description = card.css("div.description").text.strip.chop
        

            course.category = category 
        
            
    
            
            course.save_it
    

   

        end
    end
end
