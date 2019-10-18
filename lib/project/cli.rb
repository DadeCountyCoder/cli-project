#move requies into gemfile or gemspec
#Our CLI Controller
# require 'nokogiri'
# require 'open-uri'
require 'pry-nav'

class Project::CLI
  def call
    puts "Welcome Z Fighterz: Enter a number based on the categories below"
    puts
    list_categories
    menu
  end

  def list_categories
    puts <<-DOC
      1. Characters
      2. Sagas
      3. Films
      4. Manga Volume
      5. Collectibles
    DOC
  end

  def menu
    puts
    puts 'Select a number between 1 and 5 or type exit:'
    input = gets.chomp

    if input == 'exit'
      puts 'See you next time on Dragonball Z!'
    elsif input.to_i.is_a? Numeric
      if input.to_i.between?(1, 5)
        get_data(input.to_i)
      else
        puts 'Select a number between 1 and 5 or type list or exit'
        list_categories
      end
      menu
    else
      puts 'Select a number between 1 and 5 or type exit'
      list_categories
      menu
    end
  end

  def get_data(category)
    categories = ['Characters', 'Sagas', 'Films', 'Manga_Volumes', 'Collectibles']
    puts 'Popular Selections!'
    html = open("https://dragonball.fandom.com/wiki/Category:#{categories[category - 1]}")
    doc = Nokogiri::HTML(html)
    figcaptions = doc.css('li.category-page__trending-page a figcaption')
    figcaptions.each_with_index do |figcaption, index|
      puts "#{index + 1}" ". " "#{figcaption.text}"
    #binding.pry
  end
   # puts figcaption
  end
end