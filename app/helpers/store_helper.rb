module StoreHelper

    def num_locations
        Store.find(params[:id]).locations.count
    end
end