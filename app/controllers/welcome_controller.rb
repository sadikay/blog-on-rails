class WelcomeController < ApplicationController
  def index
    @articles = Article.all.order('id desc')
  end
  def about
  end
end
