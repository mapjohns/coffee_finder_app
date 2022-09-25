class CoffeesController < ApplicationController
    
    def index
        @coffees = Coffee.all
    end

    def most_recent
        @coffees = Coffee.recently_added
    end

    def new
        if params[:store_id] && !Store.exists?(params[:store_id])
            flash[:notice] = "Store not found."
            redirect_to stores_path
        else
            @coffee = Coffee.new(store_id: params[:store_id])
        end
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