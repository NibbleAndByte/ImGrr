class ImagesController < ApplicationController
    
    def new
    
    end
    
    def create
        image = Image.create(image_params)
        redirect_to image
    end

    def show
        @image = Image.find(params[:id])
    end

    private

    def image_params
        params.require(:image).permit(:url, :title, :description)
    end

end
