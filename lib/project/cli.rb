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
     @project = Project::Dbz
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the warrior you wish to challenge or type list to see opponents or type exit:"
      input = gets.strip.downcase
      # if input.to_i > 0
      #   puts @project[input.to_i-1]
      # elsif input == "list"
       #list_characters
       case input
      when "1"
        puts "Race: Saiyan, Planet: Earth, Alias :Goku Son, Kakarot!"
      when "2"
        puts "Race: Saiyan, Planet: Sandala, Alias:Prince Vegeta, Prince of all Saiyans!"
      when "3"
        puts "Race: Frieza, Planet: frieza, Alias:Lord Frieza, Emperor Frieza"
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