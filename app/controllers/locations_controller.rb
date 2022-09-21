class LocationsController < ApplicationController

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    private

    def location_params
        params.require(:location).permit(:street, :city, :state, :zip_code, :store_id)
    end

end