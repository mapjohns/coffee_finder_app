class Coffee < ActiveRecord::Base
    validates :drink_name, :description, :store_id, presence: true
    
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :store

    accepts_nested_attributes_for :store

    scope :recently_added, -> { order(created_at: :desc) }

    def store_attributes=(store_attributes)
        check = store_attributes[:name] == ""
        if check == false
              store = Store.find_or_create_by(:name => store_attributes[:name])
              self.store = store
        end
    end
    
end