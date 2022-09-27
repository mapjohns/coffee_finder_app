class StoresController < ApplicationController
    skip_before_action :logged_in?, only: [:index, :show]

    def index
        @stores = Store.all
    end
    def new
        @store = Store.new()
    end

    def create
    end

    def show
        @store = Store.find(params[:id])
        @location = Location.new()
        @locations = Location.all
    end

    def edit
    end

    def update
    end

    private

    def store_params
        params.require(:store).permit(:name)
    end

end