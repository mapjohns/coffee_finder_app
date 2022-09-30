class CoffeesController < ApplicationController
    skip_before_action :logged_in?, only: [:index, :show, :most_recent]

    def index
        if params[:store_id]
            store = Store.find(params[:store_id])
            if store.nil?
                flash[:notice] = "Store not found."
                redirect_to stores_path
            else
                @coffees = store.coffees
            end
        else
            @coffees = Coffee.all
        end
    end

    def most_recent
        @coffees = Coffee.recently_added
    end

    def highest_rated
        @coffees = Coffee.coffee_highest_rated
    end

    def new
        if params[:store_id] && !Store.exists?(params[:store_id])
            flash[:notice] = "Store not found."
            redirect_to stores_path
        else
            @coffee = Coffee.new(store_id: params[:store_id])
            @store = Store.new()
            @stores = Store.all
        end
    end

    def create
        @coffee = Coffee.new(coffee_params)
        if @coffee.save
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