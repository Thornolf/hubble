require 'net/http'

class ImageController < ApplicationController
  def index
    @info_image = Image.get_api
    @image = Image.all
  end

  def new
    @image = Image.new
  end

  def update

  end

end
