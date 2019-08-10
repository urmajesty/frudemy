class Frudemy::Course
    def self.today
        puts <<-DOC.gsub /^\s*/, ''
            1. UDEMY COURSE 1
            2. UDEMY COURSE 2
        DOC

    end
end