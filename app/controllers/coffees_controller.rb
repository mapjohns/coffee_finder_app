class CoffeesController < ApplicationController
    
    def index
        @coffees = Coffee.all
    end
    def new
        @coffee = Coffee.new
    end

    def create
        @coffee = Coffee.new(coffee_params)
        if @coffee.valid?
            @coffee.save
            redirect_to 
        else
          render 'new'  
        end
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