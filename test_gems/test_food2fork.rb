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
require 'terminal-table/import'
require 'paint'


FOOD2FORK_API_KEY = ENV['FOOD2FORK_API_KEY']
found = Food2Fork::Recipe.search({q: 'Eggs, Milk, Beef', sort: 'r', page: 1})# => returns list of Recipe array object

count = 0
rows = []

5.times do 
    rows << [found[count].title, found[count].source_url]
    count = count + 1
end

table = Terminal::Table.new :headings => [Paint['Recipe', :yellow], Paint['URL', :yellow]],:rows => rows
puts table
