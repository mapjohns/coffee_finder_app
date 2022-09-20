class Location < ActiveRecord::Base
    validates :street, :city, :state, :zip_code, :store_id, presence: true
    belongs_to :store
end