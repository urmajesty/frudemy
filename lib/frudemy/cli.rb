class Frudemy::CLI

  def start
    puts "WELCOME TO FRUDEMY!!!".colorize(:green)
    puts "\nPlease choose a category you're interested in learning by selecting a number:".colorize(:green)
    Frudemy::Scrape.scrape_categories
    set_category_roster
    list_categories
    choose_category
   
  end

  def set_category_roster
    @roster = Frudemy::Category.all
  end

  def list_categories
    @roster.each.with_index(1) do |category, index|
      puts "#{index}. #{category.category_name.upcase}"
      puts 

    end
  end
          


  def choose_category

    puts "Choose a number that corresponds to a course"
    input = gets.strip
    until input.to_i.between?(1,71) || input == "exit"
      puts "Sorry! I didn't understand that command!"
      input = gets.strip
    end
    if input != "exit"
      index =  input.to_i - 1
      category = @roster[index]
      if category.course == [] 
        Frudemy::Scrape.scrape_courses(category)
      end
        display_courses(category)
 
      
      
      
      
    end
  end
  

  def display_courses(category)
    
    puts category.category_name

    puts "This category has the following courses:"
    #gets just gets just relavent courses
    category.course.each.with_index(1) do |course, index|
    
      puts "\n\n#{index}. Name: #{course.course_name.upcase}".colorize(:green)
      puts "Date added: #{course.date_added}\nDescription: #{course.description}.\nURL: #{course.url}"
    end
  second_menu
  end


 def second_menu
   puts "\n\nWould you like to look at another category? Type 'C'"
   puts "\n\nWould you like to exit? Type 'E'"
   input = gets.strip.upcase
    if input == "C"
     list_categories
     choose_category
    elsif input == "E"
     puts "We update courses often.  Please come again soon."
    else
     puts "Sorry.  I didn't understand that command".colorize(:red)
     second_menu
   end
  end
end


