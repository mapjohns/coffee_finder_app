class LocationsController < ApplicationController
    skip_before_action :logged_in?, only: [:index, :show]
    
    def index
        if params[:store_id]
            @store = Store.find_by(id: params[:store_id])
            @locations = @store.locations
            @location = Location.new
        else
            @locations = Location.all
        end
    end

    def new
        @store = Store.find_by(id: params[:store_id])
        @location = Location.new
    end

    def create
        @location = Location.new(location_params)
        @locations = Location.all
        if @location.save
            redirect_to store_path(@location.store)
        else
            render "locations/new"
        end
    end

    def show
    end

    def edit
        @location = Location.find_by(id: params[:id])
        @store = @location.store.id

    end

    def update
        @location = Location.find_by(id: params[:id])
        @location.update(location_params)
        if @location.save
            redirect_to coffees_path
        else
            render :edit
        end
    end

    def destroy
        @location = Location.find_by(id: params[:id]).destroy
        flash[:notice] = "Location deleted"
        redirect_to coffees_path
    end

    private

    def location_params
        params.require(:location).permit(:street, :city, :state, :zip_code, :store_id)
    end

end