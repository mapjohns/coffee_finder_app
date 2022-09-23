class LocationsController < ApplicationController

    def index
        if params[:store_id]
            @store = Store.find(params[:store_id])
            @locations = @store.locations
            @location = Location.new
        else
            @locations = Location.all
        end
    end

    def new
    end

    def create
        @location = Location.new(location_params)
        if @location.save
            redirect_to store_path(@location.store)
        else
            flash[:notice] = "Location invalid"
            render store_path(@location.store)
        end
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