class StoresContoller < ApplicationController

    def new
        @store = Store.new()
    end

    def create
    end

    def edit
    end

    def update
    end

    private

    def store_params
        params.require(:store).permit(:name, :location)
    end

end