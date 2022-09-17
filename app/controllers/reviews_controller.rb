class ReviewsController < ApplicationController

    def new

    end

    def create
        
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