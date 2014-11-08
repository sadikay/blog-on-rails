class Admin::ArticlesController < Admin::BaseAdminController
  def index
    @articles=Article.all
  end
  def edit
    @articles = Article.find(params[:id])
    @category= Category.all
  end
end
