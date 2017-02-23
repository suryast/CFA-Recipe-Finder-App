
#0.upto(9) do
#  STDOUT.print "\rFlash!"
#  sleep 0.5
#  STDOUT.print "\r      " # Send return and six spaces
#  sleep 0.5
#end

#(1..10).each do |percent|
#  print "\r#{percent*10}% complete"
#  sleep(0.5)
#end
require 'Paint'

def show_wait_cursor(seconds,fps=10)
  chars = %w[| / - \\]
  delay = 1.0/fps
  (seconds*fps).round.times{ |i|
    print chars[i % chars.length]
    sleep delay
    print "\b"
  }
end

show_wait_cursor(1)

text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

count = 0
text.split("").each do |i|
    print i
    sleep 0.05
    count = count + 1
end
