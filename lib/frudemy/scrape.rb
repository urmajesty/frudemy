class Frudemy::Scrape

    def self.scrape_categorys
#
      index_page = Nokogiri::HTML(open("https://www.discudemy.com/category"))
#        
       cat_array = index_page = index_page.css("section.segment a.mb5")

         cat_array.each do |cat_card|
                
            attributes = {
    
                category_name: cat_card.text.strip



#
            } 
            category = Frudemy::Category.new(attributes)
 
    end
end
#



   def self.scrape_course(category)
       cat_page = Nokogiri::HTML(open("https://discudemy.com/category/#{category.category_name}"))

        course_cards = cat_page.css('section.card')

        course_cards.each do |card|
                



            course = Frudemy::Course.new
            course.name = card.css("a.card-header").text
            
            course.url = card.css("div.description").text.strip

            course.category = category 

            
course.save_it


    #   course.url = card.css("a.card-header").text
    #    course.views = card.css("a.card-header").text

        end
    end
end
#end
        
#    end
#  

#def self.scrape_course(course)
#course_page = Nokogiri::HTML(open(course.url))

#end
 # def self.scrape_courses(category_object)
#    course_page = Nokogiri::HTML(open(category_object.url))
#   courses = course_page.css("div.top_detial") #array of courses
#    
#      courses.each do |course_html|
#         #instantiate a new course
#         ro = Frudemy::course.new
    #     ro.url = course_html.css('a').attr('href').value
#        # ro stands for course object
#        # associate that course with this category
#        #ro.category = category_object
#        # set any course attributes
#  
#        ro.quote = course_html.css("div.media div.media-body p").text.strip
#  
#        ro.author = course_html.css("div.course_source div.media-body a.unstyled").text
#  
#        ro.press = course_html.css("div.course_source div.media-body a.subtle").text
#        # add this course to category.courses
#        #category_object.courses << ro
#        category_object.add_course(ro)
   #  end
