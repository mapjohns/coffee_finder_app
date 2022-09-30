module StoreHelper

    def num_locations
        Store.find_by(id: params[:id]).locations.count
    end

    def num_coffee
        Store.find_by(id: params[:id]).coffees.count
    end
end