class Frudemy::Course
    attr_accessor :name, :category, :clicks, :url
    def self.today
        puts <<-DOC.gsub /^\s*/, ''
            1. UDEMY COURSE 1
            2. UDEMY COURSE 2
        DOC
        course_1 = self.new
        course_1.name = "udemy course 1"
        course_1.category = "ruby"
        course_1.clicks = clicks
        course_1.url = "https//happy.com"

        course_2= self.new
        course_2.name = "udemy course 2"
        course_2.category = "javascript"
        course_2.clicks = clicks
        course_2.url = "https//www.code.com"

        [course_1, course_2]
    end

end