class Frudemy::CLI


#attr_accessor :sortedcategorys
#
def start
  puts "Welcome to Frudemy"
  Frudemy::Scraper.scrape_categorys
#      greeting
#      scrape_categorys
#      menu
end
#  
#    def greeting
#    puts "Welcome to the category detail App!"


list_course
end
def list_categorys
  Frudemy::Course all.each.with.index[1] do |category, index|
    puts #(index). #(category.title)

#           
#        Frudemy::Category.all.each_with_index(i) do |category, index|
#          puts "#(index). #(category.name)"
#               @categorys.each.with_index(1) do |category, i|
#                   puts "#{i}. #{category.title} - #{category.category} - #{category.url}"
              end
          end
#           
#  
#  
#    def scrape_categorys
#      Frudemy::Scrape.scrape_categorys
   end
#  
#    def menu
#      puts "Please select the number of the category you'd like to study today"
#      puts "If you want to exit, type 'exit'"
#  
#      input = gets.strip.downcase
#      
#  
##      case input
##      when 'category'
##        list_categorys
##        get_category
##      when 'views'
##        list_categorys
##        get_category
##      when 'exit'
##      else
##        puts "Sorry I didn't understand that!"
##        menu
##      end
#    end
#  
##    def sort_categorys_abc
##    @sorted_categorys = Frudemy::Category.all.sort_by{|category| category.title}
##end
##
##def sort_categorys_views
##      @sorted_categorys = Frudemy::Category.all.reverse
##    end
    def list_category
#     puts "Here are the top 100 categories:"
#     @category = Frudemy.Category.today
     @category.each.with_index(1) do |category,index|
       puts "#{index}. #{category.title}"    # if index <= 100
       
   end
#
#    def list_categorys
#      puts "Here are the top 100 categorys:"
#      @categorys = Frudemy.Category.today
#      @categorys.each.with_index(1) do |category,index|
#        puts "#{index}. #{category.title}"    # if index <= 100
#      end
#    end
#  
#    # def get_category_method
#    #     input = gets.strip   #"A Private War"   "exit"
#    #     index =  input.to_i - 1
#    #     if index.between?(0,99)   #a string will be -1
#    #       category = @sorted_categorys[index]
#    #       puts "#{category.title}:"
#    #       puts "Rotten Tomatoes was liked by #{category.views} of people "
#    #       puts "#{category.critic}"
#    #       want_more_info(category)
#  
#    #     elsif input == "exit"
#    #         #allow this method to end
#    #     else
#    #       puts "Sorry! I didn't understand that command"
#    #       get_category_method   #recursion
#    #     end
#    # end
#  
#    def get_category
#       puts "Choose a number that corresponds to a category"
#        input = gets.strip
#        until input.to_i.between?(1,71) || input == "exit"
#          puts "Sorry! I didn't understand that command!"
#          input = gets.strip
#        end
#        if input != "exit"
#          index =  input.to_i - 1
#          category = category[index]
#          display_category(category)
#          menu
#        end
#    end
#  
#    def display_category(category)
#      puts "#{category.title}:"
#      puts "categorys were viewed by #{category.views} of people "
#      puts "#{category.critic}"
#      want_more_info(category)
#      puts "Please select a category you want more info about by choosing a number 1-100  or type 'exit' to Exit"
#    end
#  
#    def want_more_info(category)
#      puts "Read more (Y/N)?"
#      input = gets.strip.upcase
#      until  ["Y","N","YES","NO"].include?(input)
#        puts "Please type Y or N"
#        input = gets.strip.upcase
#      end
#      if input == "Y" || input == "YES"
#        puts "... getting the details \n\n"
#        # if any of the attributes that gets scraped the 2nd time is nil, then we should scrape
#        Frudemy::Scraper.scrape_details(category) if category.details == []
#        category.details.each do |detail|
#          puts "#{detail.author} from the #{detail.press} says #{detail.quote}.\n\n"
#        end
#      else
#        puts "you ended"
#      end
#    end
#  
#  end
##class Frudemy::CLI
##    
##
##    def call
##        list_categorys
##        menu
##        see_ya
##    end
##   
##    def list_categorys#
##        puts "Welcome to Frudemy!"
##    
##        @categorys = Frudemy::Category.today
##        @categorys.each.with_index(1) do |category, i|
##            puts "#{i}. #{category.title} - #{category.category} - #{category.url}"
##        end
##    end
##    
##    def menu
##        input = nil
##        while input != "exit"
##            puts "Enter the number of the category you're interested in or type list to see the categorys again, or type exit."
##        input = gets.strip.downcase
##        
##        if input.to_i > 0 
##            the_category = @categorys[input.to_i-1]
##            puts "#{category.name} - #{category.category} - #{category.url}"
##        elsif input == "list"
##            list_categorys
##        else
##            puts "Not sure what you need.  Please type list or exit."
##        end
##    end
##end
##def see_ya
##    puts "Feel free to come back anytime!"
##end
##end