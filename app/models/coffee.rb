class Coffee < ActiveRecord::Base
    validates :drink_name, :description, :store_id, presence: true
    
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :store
end