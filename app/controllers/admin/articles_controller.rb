class Admin::ArticlesController < Admin::BaseAdminController
  def index
    @articles=Article.all
  end

  def create
    @article= Article.new article_params
    if @article.save
      flash[:notice]='Makale başarı ile eklendi'
      redirect_to admin_path
    else
      render :new
    end
  end

  def edit
    @articles = Article.find(params[:id])
    @category= Category.all
  end

  def new
    @articles= Article.new
    @category= Category.all
  end

  def update
    @article= Article.find params[:id]
    @category= Category.find params[:id]
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to admin_path, notice: 'Makale Güncellendi' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def article_params
    params.require(:article).permit!
  end
end
