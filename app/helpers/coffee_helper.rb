module CoffeeHelper

    def avg_rating
        Coffee.find(params[:id]).reviews.average(:rating).to_f.round(2)
    end
end
