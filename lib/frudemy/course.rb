class Frudemy::Course
    attr_accessor :name, :category, :clicks, :url
    def self.today
        
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
    end

end