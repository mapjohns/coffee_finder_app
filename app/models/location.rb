class Location < ActiveRecord::Base
    validates :street, :city, :state, :zip_code, :store_id, presence: true
    validates :store_id, presence: true, on: :create
    validates_numericality_of :zip_code
    belongs_to :store
end