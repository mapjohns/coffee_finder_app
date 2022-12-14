class ReviewsController < ApplicationController
    skip_before_action :logged_in?, only: [:index, :show]

    def new
        if params[:coffee_id] && !Coffee.exists?(params[:coffee_id])
            flash[:notice] = "Coffee not found."
            redirect_to coffees_path
        else
            @review = Review.new(coffee_id: params[:coffee_id])
            @coffee = Coffee.find_by(id: params[:coffee_id])
        end
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to coffee_path(@review.coffee)
        else
            @coffee = Coffee.find_by(id: @review.coffee.id)
            render "reviews/new"
        end
    end

    def edit
        if params[:user_id] && !User.exists?(params[:user_id]) || params[:user_id].to_i != current_user.id
            redirect_to coffees_path
        else
            @review = Review.find_by(id: params[:id])
            @coffee = Coffee.find_by(id: @review.coffee.id)
        end
    end

    def update
        @review = Review.find_by(id: params[:id])
        @review.update(review_params)
        if @review.save
          redirect_to coffee_path(@review.coffee)
        else
          @coffee = Coffee.find_by(id: @review.coffee.id)
          render :edit
        end
    end

    def destroy
        @review = Review.find_by(id: params[:id]).destroy
        flash[:notice] = "Review deleted"
        redirect_to coffees_path
    end

    private

    def review_params
        params.require(:review).permit(:rating, :content, :coffee_id, :user_id)
    end

end