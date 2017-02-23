#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'open_uri_redirections'
require 'rest-client'

# Fetch and parse HTML document

page = Nokogiri::HTML(RestClient.get("http://www.bbc.co.uk/food/recipes/wilted_spinach_and_33071"))   
puts page.class   # => Nokogiri::HTML::Document'

#puts page.css("title")[0].name   # => title
#puts page.css("title")[0].text   # => My webpage
puts "#{page}"