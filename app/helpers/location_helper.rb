module LocationHelper
    def store_name
        if params[:store_id] && @locations.present? == true
            "#{@locations.first.store.name} Locations:"
        else
            "Locations:"
        end
    end

    def render_name
        if @store
            @store.name
        else
            @location.store.name
        end
    end
end
