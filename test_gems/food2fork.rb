# set FOOD2FORK_API_KEY as environment variable
#export FOOD2FORK_API_KEY = c4be39dba1d640531d1b8f8a2019ba6d

require 'nokogiri'
require 'open-uri'
require 'open_uri_redirections'
require 'rest-client'
require 'food2fork'
require 'html_to_plain_text'
require 'Pry'
require 'HTTParty'
require 'JSON'
require 'csv'
require 'rubygems'


FOOD2FORK_API_KEY = ENV['FOOD2FORK_API_KEY']
found = Food2Fork::Recipe.search({q: 'Eggs, Milk, Beef', sort: 'r', page: 1})# => returns list of Recipe array object

# Fetch and parse HTML document
page = Nokogiri::HTML(RestClient.get(found.pop.f2f_url))   

# Sanitize HTML tag and print document
text = HtmlToPlainText.plain_text(page.to_s)
puts text

#p html.xpath('//*[preceding-sibling::h5[1]][following-sibling::h5[2]]').map(&:content)

# Print out extracted text (each element's inner text is separated by newlines)
#puts extracted_text.join("\n")