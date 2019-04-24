require 'net/http'

class Image < ApplicationRecord
  @@title = "sun"
  def self.get_api
    url_api = "https://images-api.nasa.gov/search?q=" + @@title + "&media_type=image"
    request_to_search_nasa_api = Net::HTTP.get(URI(url_api))
    JSON.parse request_to_search_nasa_api
  end

  def self.modify_title(title)
    @@title = title
  end
end
