class ImagesController < ApplicationController

  def upload
    file = params[:url]
    @image=Image.new
    @image.url = file
    if @image.save
      render :json => {success: true, file_path: @image.url.url}
    else
      render :json => @image.errors.to_json
    end
  end





  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:url)
    end
end
