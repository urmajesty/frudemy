#class Frudemy 
    #def call
     #puts "Enjoy your free course today"
 #end


what is a course a 
a course has a category
a course has a url
a course has a view 
a course has a download


course_1 = self.new
        course_1.name = "udemy course 1"
        course_1.category = "ruby"
        course_1.clicks = "click"
        course_1.url = "https//happy.com"

        course_2 = self.new
        course_2.name = "udemy course 2"
        course_2.category = "javascript"
        course_2.clicks = "click"
        course_2.url = "https//www.code.com"

[course_1, course_2]
module Frudemy
  class Error < StandardError; end
end
        doc = Nokogiri::HTML(open("https://www.discudemy.com/all"))

        title = doc.search("a.card-header").first.text
        category = doc.search("span.catSpan").first.text
        url =  doc.search("a.card-header").first.attr("href")

        course.category = doc.search("img.ui.avatar.image").first.attr("alt")
              course.title = doc.search("a.card-header").first.text
        course.category = doc.search("span.catSpan").first.text
        course.url =  doc.search("a.card-header").attr("href")

                 title: course_card.css("div.articlecourse_title a")[0].children.text ,
 #           url: course_card.css("div.article_mcoursetitle a")[0].attributes['href'].value,
 #           views: course_card.css('span.tMeterScore').text,
 #           detail: course_card.css("div.details-consensus").text,


            url = course_card.css("a.card-header").first.attributes['href'].value
            views = course_card.css("span.catSpan").text
            detail = course_card.css("a.card-header").text
          
     id = index + 1