class Admin::ImageController < ApplicationController
  def new
    @image=Image.new
  end
end
