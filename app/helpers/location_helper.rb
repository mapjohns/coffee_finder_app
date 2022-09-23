module LocationHelper
    def store_name
        if params[:store_id]
            "#{@locations.first.store.name} Locations:"
        else
            "Locations:"
        end
    end
end
