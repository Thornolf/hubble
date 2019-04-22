require 'net/http'

class ImageController < ApplicationController
  def index
    @info_image = Image.get_api
  end
end
