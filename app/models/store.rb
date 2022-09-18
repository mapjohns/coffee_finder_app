class Store < ActiveRecord::Base
    validates :name, presence: true

    has_many :coffees

end