require 'net/http'

class PictureController < ApplicationController
  def index
    @info = Article.get_api_info
  end
end
