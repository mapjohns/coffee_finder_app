class ReviewsController < ApplicationController

    def new
        if params[:coffee_id] && !Coffee.exists?(params[:coffee_id])
            flash[:notice] = "Coffee not found."
            redirect_to coffees_path
        else
            @review = Review.new(coffee_id: params[:coffee_id])
            @coffee = Coffee.find(params[:coffee_id])
        end
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to coffee_path(@review.coffee)
        else
            @coffee = Coffee.find(@review.coffee.id)
            render "reviews/new"
        end
    end

    def edit
        
    end

    def update
    end

    private

    def review_params
        params.require(:review).permit(:rating, :content, :coffee_id, :user_id)
    end

end