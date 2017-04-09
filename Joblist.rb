require "httparty"
require 'nokogiri'

def jobs_list

  url = "https://miami.craigslist.org/search/sof"

  response = HTTParty.get url

  dom = Nokogiri::HTML(response.body)

  job_array = dom.css('a.hdrlnk').map do |element|
    element.content
  end

end

# p job_array
# .map do |element|
# puts element.content
