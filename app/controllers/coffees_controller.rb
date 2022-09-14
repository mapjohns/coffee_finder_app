class CoffeesController < ApplicationController
    
    def new
        @coffee = Coffee.new
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

    def coffee_params
        params.require(:coffee).permit(:drink_name, :description, :store_id)
    end
end