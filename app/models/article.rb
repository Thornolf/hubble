class Article < ApplicationRecord
  def self.get_api_info
    nasa_api = "https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}"
    request_to_nasa_api = Net::HTTP.get(URI(nasa_api))
    JSON.parse request_to_nasa_api
  end
end

=begin

def self.get_api
  url_api = "https://images-api.nasa.gov/search?q=sun&media_type=image"
  request_to_search_nasa_api = Net::HTTP.get(URI(url_api))
  JSON.parse request_to_search_nasa_api
end
=end
