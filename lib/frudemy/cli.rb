class Frudemy::CLI

    def call
        list_courses
        menu
        see_ya
    end
    def list_courses
        puts "Today's Free Courses"
        puts <<-DOC.gsub /^\s*/, ''
            1. UDEMY COURSE 1
            2. UDEMY COURSE 2
        DOC
    end
    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the course you're interested in or type list to see the deals again, or type exit."
        input = gets.strip.downcase
        case input
        when "1" 
            puts "More info on course 1..."
        when "2"
            puts "More info on course 2..."
        when "list"
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