class Admin::ImagesController < Admin::BaseAdminController
  def new
    @images = Image.new
  end

  def create
  	@images = Image.new image_params
  	if @images.save
      flash[:notice] = 'Makale başarı ile eklendi'
      redirect_to admin_image_path(@images.id)
    else
      render :new
    end
  end

  def show
  	@images = Image.find params[:id]
  end

  private
  def image_params
    params.require(:image).permit!
  end
end
