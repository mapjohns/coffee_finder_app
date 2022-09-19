module CoffeeHelper

    def avg_rating
        Coffee.find_by(params[:id]).reviews.average(:rating).to_i
    end
end
