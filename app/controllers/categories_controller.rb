class CategoriesController < ApplicationController
  def show
      @category = Category.find params[:id]
      @images = Image.where.not("id = 24 OR id = 27 OR id = 28")
  end
end
