require 'mechanize'

mechanize = Mechanize.new

mechanize.user_agent_alias = 'Mac Safari'

chefs = []

chefs_url = 'http://www.bbc.co.uk/food/ingredients'

chefs_page = mechanize.get(chefs_url)

chefs_page.links_with(href: /\/by\/letters\//).each do |link|
  atoz_page = mechanize.click(link)

  atoz_page.links_with(href: /\A\/food\/letters\/\w+\z/).each do |link|
    chefs << link.href.split('/').last
  end
end

puts chefs