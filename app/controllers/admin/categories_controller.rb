class Admin::CategoriesController < Admin::BaseAdminController
  def show
    @category = Category.find params[:id]
  end
end
