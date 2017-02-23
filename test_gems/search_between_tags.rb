HTML = "<h1> Header is here</h1>
  <h2>Header 2 is here</h2>
     <p>Extract me!</p>
     <p>Extract me too!</p>
  <h2> Next Header 2</h2>
     <p>not interested</p>
     <p>not interested</p>
  <h2>Header 2 is here</h2>
     <p>Extract me three!</p>
     <p>Extract me four!</p>"

require 'nokogiri'
html = Nokogiri::HTML(HTML)

# Find all elements between the first and second h2s
p html.xpath('//*[preceding-sibling::h2[1]][following-sibling::h2[2]]').map(&:content)
#=> ["Extract me!", "Extract me too!"]

# Find all elements between the third h2 and the end
#p html.xpath('//*[preceding-sibling::h2[3]]').map(&:content)
#=> ["Extract me three!", "Extract me four!"]