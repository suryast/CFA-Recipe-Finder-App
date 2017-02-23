require './credentials'
require 'nokogiri'
require 'open-uri'
require 'open_uri_redirections'
require 'rest-client'
require 'food2fork'
require 'html_to_plain_text'

FOOD2FORK_API_KEY = get_food2fork_credentials

  def get_recipe(ingredients)
    found = Food2Fork::Recipe.search({q: "#{ingredients}", sort: 'r', page: 1})# => returns list of Recipe array object
    
    # Fetch and parse HTML document
    page = Nokogiri::HTML(RestClient.get(found.pop.f2f_url))

    # Grab link, recipe name, ingredients and nutrition content

    # Santize the HTML documents
    text = HtmlToPlainText.plain_text(page.to_s)
  end
