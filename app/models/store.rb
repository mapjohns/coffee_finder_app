class Store < ActiveRecord::Base
    validates :name, presence: true
    validates :name, uniqueness: true
    has_many :coffees
    has_many :locations
end