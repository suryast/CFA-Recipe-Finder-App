require 'html_to_plain_text'
html = File.read("./log.html")
text = HtmlToPlainText.plain_text(html)
puts text