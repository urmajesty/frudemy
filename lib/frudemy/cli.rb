class Frudemy::CLI
    attr_accessor :sortedcourses
  
    def start
      greeting
      scrape_courses
      menu
    end
  
    def greeting
      puts "Welcome to the Course detail App!"
    end
    def list_courses
               puts "Welcome to Frudemy!"
           
               @courses = Frudemy::Course.today
               @courses.each.with_index(1) do |course, i|
                   puts "#{i}. #{course.title} - #{course.category} - #{course.url}"
               end
           end
           
  
  
    def scrape_courses
      Frudemy::Scrape.scrape_courses
    end
  
    def menu
      puts "Please select the number of the category you'd like to study today"
      puts "If you want to exit, type 'exit'"
  
      input = gets.strip.downcase
      
  
#      case input
#      when 'category'
#        list_courses
#        get_course
#      when 'views'
#        list_courses
#        get_course
#      when 'exit'
#      else
#        puts "Sorry I didn't understand that!"
#        menu
#      end
    end
  
#    def sort_courses_abc
#    @sorted_courses = Frudemy::Course.all.sort_by{|course| course.title}
#end
#
#def sort_courses_views
#      @sorted_courses = Frudemy::Course.all.reverse
#    end
     def list_category
      puts "Here are the top 100 categories:"
      @category = Frudemy.Course.today
      @category.each.with_index(1) do |category,index|
        puts "#{index}. #{category.title}"    # if index <= 100
      end
      binding.pry
    end

    def list_courses
      puts "Here are the top 100 courses:"
      @courses = Frudemy.Course.today
      @courses.each.with_index(1) do |course,index|
        puts "#{index}. #{course.title}"    # if index <= 100
      end
    end
  
    # def get_course_method
    #     input = gets.strip   #"A Private War"   "exit"
    #     index =  input.to_i - 1
    #     if index.between?(0,99)   #a string will be -1
    #       course = @sorted_courses[index]
    #       puts "#{course.title}:"
    #       puts "Rotten Tomatoes was liked by #{course.views} of people "
    #       puts "#{course.critic}"
    #       want_more_info(course)
  
    #     elsif input == "exit"
    #         #allow this method to end
    #     else
    #       puts "Sorry! I didn't understand that command"
    #       get_course_method   #recursion
    #     end
    # end
  
    def get_course
       puts "Choose a number that corresponds to a course"
        input = gets.strip
        until input.to_i.between?(1,71) || input == "exit"
          puts "Sorry! I didn't understand that command!"
          input = gets.strip
        end
        if input != "exit"
          index =  input.to_i - 1
          course = course[index]
          display_course(course)
          menu
        end
    end
  
    def display_course(course)
      puts "#{course.title}:"
      puts "Courses were viewed by #{course.views} of people "
      puts "#{course.critic}"
      want_more_info(course)
      puts "Please select a course you want more info about by choosing a number 1-100  or type 'exit' to Exit"
    end
  
    def want_more_info(course)
      puts "Read more (Y/N)?"
      input = gets.strip.upcase
      until  ["Y","N","YES","NO"].include?(input)
        puts "Please type Y or N"
        input = gets.strip.upcase
      end
      if input == "Y" || input == "YES"
        puts "... getting the details \n\n"
        # if any of the attributes that gets scraped the 2nd time is nil, then we should scrape
        Frudemy::Scraper.scrape_details(course) if course.details == []
        course.details.each do |detail|
          puts "#{detail.author} from the #{detail.press} says #{detail.quote}.\n\n"
        end
      else
        puts "you ended"
      end
    end
  
  end
#class Frudemy::CLI
#    
#
#    def call
#        list_courses
#        menu
#        see_ya
#    end
#   
#    def list_courses#
#        puts "Welcome to Frudemy!"
#    
#        @courses = Frudemy::Course.today
#        @courses.each.with_index(1) do |course, i|
#            puts "#{i}. #{course.title} - #{course.category} - #{course.url}"
#        end
#    end
#    
#    def menu
#        input = nil
#        while input != "exit"
#            puts "Enter the number of the course you're interested in or type list to see the courses again, or type exit."
#        input = gets.strip.downcase
#        
#        if input.to_i > 0 
#            the_course = @courses[input.to_i-1]
#            puts "#{course.name} - #{course.category} - #{course.url}"
#        elsif input == "list"
#            list_courses
#        else
#            puts "Not sure what you need.  Please type list or exit."
#        end
#    end
#end
#def see_ya
#    puts "Feel free to come back anytime!"
#end
#end