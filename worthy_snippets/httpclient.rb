#this script navigates the web to grab source files

require 'net/http'
require 'uri'
Net::HTTP.get_print URI.parse('http://www.ruby-lang.org/en/')

src = Net::HTTP.get(URI.parse('http://www.ruby-lang.org/en/'))

puts src
