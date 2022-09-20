class StoresController < ApplicationController

    def new
        @store = Store.new()
    end

    def create
    end

    def show
        @store = Store.find(params[:id])
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