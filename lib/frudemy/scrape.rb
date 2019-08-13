class Frudemy::Scrape

    def self.scrape_courses
        index_page = Nokogiri::HTML(open("https://www.discudemy.com/category"))
  
       array_of_courses = index_page.css("a.ui.red.inverted.catbtn.mb5")
  
  array_of_courses[0...71].each_with_index do |course_card, index|
        attributes = {
    
        }
   course = Frudemy::Course.new
   binding.pry

  
    end
    
    
        end

    end
  
#    def self.scrape_details(course_object)
#    detail_page = Nokogiri::HTML(open(course_object.url))
#    details = detail_page.css("div.top_detial") #array of details
#    
#      details.each do |detail_html|
#         #instantiate a new detail
#         ro = Frudemy::detail.new
#        # ro stands for detail object
#        # associate that detail with this course
#        #ro.course = course_object
#        # set any detail attributes
#  
#        ro.quote = detail_html.css("div.media div.media-body p").text.strip
#  
#        ro.author = detail_html.css("div.detail_source div.media-body a.unstyled").text
#  
#        ro.press = detail_html.css("div.detail_source div.media-body a.subtle").text
#        # add this detail to course.details
#        #course_object.details << ro
#        course_object.add_detail(ro)
#      end
#  
#    end
## end