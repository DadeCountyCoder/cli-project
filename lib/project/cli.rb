#move requires into gemfile or gemspec
#Our CLI Controllers
#require 'nokogiri'
#require 'open-uri'
require 'pry-nav'

class Project::CLI
  def call
    puts "Welcome Z Fighterz:
    Please select a number below to view trending items for that category."
    puts
    Project::Scraper.scrape
    # list_categories
    menu
  end

#binding.pry
  # def list_categories
  #   puts <<-DOC
  #     1. Characters
  #     2. Sagass
  #     3. Films
  #     4. Manga Volume
  #     5. Collectibles
  #   DOC
  #   @project = Project::Scraper
  end

  def menu
    puts
    puts 'Choosing a number 1-5 will change the category for you or type exit:'
    input = gets.chomp

    if input == 'exit'
      puts 'See you next time on Dragonball Z!'
    elsif input.to_i.is_a? Numeric
      if input.to_i.between?(1, 5)
        # scrape(input.to_i)
      else
        puts 'Please enjoy one of these trending categories'
        
      end
      menu
    else
      puts 'Select a number or type exit'
      
      menu
    end
  end

#   def get_data(category)
#     categories = ['Characters', 'Sagas', 'Films', 'Manga_Volumes', 'Collectibles']
#     puts 'Most Popular!'
#     html = open("https://dragonball.fandom.com/wiki/Category:#{categories[category - 1]}")
#     doc = Nokogiri::HTML(html)
#     figcaptions = doc.css('li.category-page__trending-page a figcaption')
#     figcaptions.each_with_index do |figcaption, index|
#       puts "#{index + 1}" ". " "#{figcaption.text}"
#     #binding.pry
#   end
#   puts figcaption
# end 
# end 

