class WelcomeController < ApplicationController
  def index
    @articles = Article.all
  end
  def about
  end
end
