class Image < ApplicationRecord
  def self.get_api
    url_api = "https://images-api.nasa.gov/search?q=sun&media_type=image"
    request_to_search_nasa_api = Net::HTTP.get(URI(url_api))
    JSON.parse request_to_search_nasa_api
  end
end
