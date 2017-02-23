require 'capybara'
require 'capybara/poltergeist'
require 'capybara/dsl'

include Capybara::DSL
Capybara.default_driver = :poltergeist

visit "http://ngauthier.com/"

all(".posts .post").each do |post|
  title = post.find("h3 a").text
  url   = post.find("h3 a")["href"]
  date  = post.find("h3 small").text
  summary = post.find("p.preview").text

  puts title
  puts url
  puts date
  puts summary
  puts ""
end