class Store < ActiveRecord::Base
    validates :store, presence: true

    has_many :coffees

end