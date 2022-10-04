module CoffeeHelper

    def avg_rating
        Coffee.find_by(id: params[:id]).reviews.average(:rating).to_f.round(2)
    end

    def coffee_index_wording
        if params[:store_id]
            "Below are all the coffees available so far for #{@coffees.first.store.name}!"
        else
            "Below are all the coffees available so far!"
        end
    end
end
