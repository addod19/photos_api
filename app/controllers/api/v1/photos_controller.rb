module Api
    module V1
        class PhotosController < ApplicationController
            def index
                @photos = Photo.all
                render json: { status: 'Success',
                message: 'All photos retrieved',
                data: @photos}, status: :ok
            end

            def create
                @photo = Photo.new(photo_params)
                if @photo.save
                    render json: { status: 'Success',
                    message: 'Photo created successfully',
                    data: @photo}, status: :ok
                else
                    render json: { status: 'ERROR',
                    message: 'Could not create photo',
                    data: @photo.errors}, status: :ok
                end
            end

            def show
                @photo = Photo.find(params[:id])
                render json: { status: 'Success',
                message: 'All photo retrieved',
                data: @photo}, status: :ok
            end

            private

            def photo_params
                params.require(:photo).permit(:title, :image, :description)
            end

        end
    end
end