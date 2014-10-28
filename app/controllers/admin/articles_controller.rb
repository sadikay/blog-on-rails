class Admin::ArticlesController < Admin::BaseAdminController
  def index
    @articles=Article.all
  end
end
