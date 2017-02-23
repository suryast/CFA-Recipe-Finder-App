require './credentials'
require 'nokogiri'
require 'open-uri'
require 'open_uri_redirections'
require 'rest-client'
require 'food2fork'
require 'html_to_plain_text'

# class FindRecipe
#   def initialize(credentials)
#     @credentials = credentials
#   end

  def get_recipe(ingredients)
    found = Food2Fork::Recipe.search({q: "#{ingredients}", sort: 'r', page: 1})# => returns list of Recipe array object
    # Fetch and parse HTML document
    page = Nokogiri::HTML(RestClient.get(found.pop.f2f_url))
    text = HtmlToPlainText.plain_text(page.to_s)

  end

# end

FOOD2FORK_API_KEY = get_food2fork_credentials


# FOOD2FORK_API_KEY = get_food2fork_credentials
# found = Food2Fork::Recipe.search({q: "#{user_1.ingredients}", sort: 'r', page: 1})# => returns list of Recipe array object

# Fetch and parse HTML document
# page = Nokogiri::HTML(RestClient.get(found.pop.f2f_url))

# Sanitize HTML tag and print document
# text = HtmlToPlainText.plain_text(page.to_s)
# puts text

#p html.xpath('//*[preceding-sibling::h5[1]][following-sibling::h5[2]]').map(&:content)

# Print out extracted text (each element's inner text is separated by newlines)
#puts extracted_text.join("\n")
