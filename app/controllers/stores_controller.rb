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
        @store = Store.find_by(id: params[:id])
        @location = Location.new()
        @locations = Location.all
    end

    def edit
        @store = Store.find_by(id: params[:id])
    end

    def update
    end

    def destroy
        @store = Store.find_by(id: params[:id]).destroy
        flash[:notice] = "Store deleted"
        redirect_to stores_path
    end
    private

    def store_params
        params.require(:store).permit(:name)
    end

end