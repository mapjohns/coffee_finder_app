class ReviewsController < ApplicationController

    def new

    end

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to coffee_path(@review.coffee)
        else
            redirect_to coffee_path(@review.coffee)
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