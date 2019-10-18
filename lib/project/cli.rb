#Our CLI Controller
require 'nokogiri'
require 'open-uri'

class Project::CLI
  def call
    puts "Welcome Z Fighterz: Enter a number based on the categories below"
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
    puts 'Select a number between 1 and 5 or type exit:'
    input = gets.chomp

    if input == 'exit'
      puts 'See you next time on Dragonball Z!'
    elsif input.to_i.is_a? Numeric
      if input.to_i.between?(1, 5)
        get_data(input.to_i)
      else
        puts 'Select a number between 1 and 5 or type exit'
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
    puts 'Getting trending pages'
    html = open("https://dragonball.fandom.com/wiki/Category:#{categories[category - 1]}")
    doc = Nokogiri::HTML(html)
    figcaptions = doc.css('li.category-page__trending-page a figcaption') 
    figcaption_texts = figcaptions.map { |figcaption| figcaption.text }
    puts figcaption_texts
  end
end