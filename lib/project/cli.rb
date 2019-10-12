#Our CLI Controller
class Project::CLI
  
  def call
    puts "Welcome Z Fighterz:"
    list_characters
    menu
    goodbye
  end
  
  def list_characters
    puts <<-DOC
      1.Goku
      2.Vegeta
      3.Frieza
    DOC
     @project = Project::Dbz.today
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the warrior you wish to challenge or type list to see opponents or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on fighter 1..."
      when "2"
        puts "More info on fighter 2..."
      when "3"
        puts "More info on fighter 3..."
      when "list"
        list_characters
      else
        puts "It's Over 9,000!, type list or exit"
    end
   end
  end
 
  def goodbye
    puts "See you next time on Dragonball Z!"
  end  
end
  
