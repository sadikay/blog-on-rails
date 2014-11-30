class Admin::ImagesController < Admin::BaseAdminController
  def new
    @images = Image.new
  end

  def create
  	@image = Image.new params[:id]
  	if @image.save
      flash[:notice] = 'Makale başarı ile eklendi'
      redirect_to admin_image_path(@image.id)
    else
      render :new
    end
  end

  def show
  	@image = Image.find params[:id]
  end
end
