class Frudemy::CLI

    def call
        list_courses
        menu
        see_ya
    end
   
    def list_courses

        puts "Today's Free Courses"
        @courses = Frudemy::Course.today
        @courses.each.with_index(1) do |course, i|
            puts "#{i}. #{course.name} - #{course.category} - #{course.clicks}"
        end
    end
    
    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the course you're interested in or type list to see the courses again, or type exit."
        input = gets.strip.downcase
        
        if input.to_i > 0 
            the_course = @courses[input.to_i-1]
            puts "#{course.name} - #{course.category} - #{course.clicks}"
        elsif input == "list"
            list_courses
        else
            puts "Not sure what you need.  Please type list or exit."
        end
    end
end

def see_ya
    puts "Feel free to come back anytime!"
end
end