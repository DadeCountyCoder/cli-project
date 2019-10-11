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
  end
  
  def menu
    puts "Enter the number of the warrior you wish to challenge or type exit to enter:"
     input = nil
     while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on fighter 1..."
      when "2"
        puts "More info on fighter 2..."
      when "3"
        puts "More info on fighter 3..."
    end
   end
  end
 
  def goodbye
    puts "See you next time on Dragonball Z!"
  end  
end
  
