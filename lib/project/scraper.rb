require 'pry'
class Project::Scraper
    


    def self.scrape
        # html = open('https://dragonball.fandom.com/wiki/Category:Characters')
        #     @doc = Nokogiri::HTML(html)
# site = "https://dragonball.fandom.com/wiki/Category:Characters"
# @doc = Nokogiri::HTML(open(site))
#  team_roster = @doc.css(".pane-content")
    end
        doc = Nokogiri::HTML(open('https://dragonball.fandom.com/wiki/Category:Characters'))
        figcaptions = doc.css('li.category-page__trending-page a figcaption')
        figcaptions.each_with_index do |figcaption, index| end
            # puts "#{index + 1}" ". " "#{figcaption.text}"
            puts figcaptions
        end
        

    # figcaptions.each_with_index do |figcaption, index| end
    # puts "#{index + 1}" ". " "#{figcaption.text}"
    # def get_data(category)
    # categories = ['Characters', 'Sagas', 'Films', 'Manga_Volumes', 'Collectibles']
    # puts 'Most Popular!'
    # html = open("https://dragonball.fandom.com/wiki/Category:#{categories[category - 1]}")
    # doc = Nokogiri::HTML(html)
    # figcaptions = doc.css('li.category-page__trending-page a figcaption')
    # figcaptions.each_with_index do |figcaption, index| end
    # puts "#{index + 1}" ". " "#{figcaption.text}"
    # #binding.pry
    # # puts figcaption
    # binding.pry
    # end
