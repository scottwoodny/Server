require "httparty"

url = "https://miami.craigslist.org/search/sof"

response = HTTParty.get url


# puts response.body
# p "#" * 40
require 'nokogiri'

dom = Nokogiri::HTML(response.body)

# puts dom.class
# p dom.css('a.hdrlnk')
#
# dom.css('a.hdrlnk').first
#
job_array = dom.css('a.hdrlnk')

job_array = dom.css('a.hdrlnk').map do |element|
    puts element.content
  end

# p job_array
