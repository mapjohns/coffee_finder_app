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
            redirect_to coffees_path
        else
          render 'new'  
        end
    end

    def show
        @coffee = Coffee.find(params[:id])
        @review = Review.new()
    end

    def edit

    end

    def update

    end

    private

    def coffee_params
        params.require(:coffee).permit(:drink_name, :description, :store_id, store_attributes: [:name])
    end
end