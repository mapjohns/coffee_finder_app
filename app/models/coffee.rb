class Coffee < ActiveRecord::Base
    validates :drink_name, :description, :store_id presence: true
end