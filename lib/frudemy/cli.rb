class Frudemy::CLI

  def start
    puts "Welcome to Frudemy!!!"
    puts "Please choose the category you are interested in learning"
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
      puts "#{index}. #{category.category_name}"
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
     
      Frudemy::Scrape.scrape_courses(category)
      display_courses(category)
      
    end
  end
  

  def display_courses(category)
    
    puts category.category_name

    puts "This category has the following courses:"
    #gets just gets just relavent courses
    category.course.each do |course|
    
      puts "\n\nName: #{course.course_name}. \nDate_added: #{course.date_added} \nDescription: #{course.description}. \nURL: #{course.url}"
    end
  end
end


