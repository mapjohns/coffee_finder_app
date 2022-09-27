module StoreHelper

    def num_locations
        Store.find(params[:id]).locations.count
    end

    def num_coffee
        Store.find(params[:id]).coffees.count
    end
end