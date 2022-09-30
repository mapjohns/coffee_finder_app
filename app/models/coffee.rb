class Coffee < ActiveRecord::Base
    validates :drink_name, :description, :store_id, presence: true
    validates :drink_name, uniqueness: { message: "already in use at this store." }, if: :same_drink_store, on: :create

    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :store

    accepts_nested_attributes_for :store

    scope :recently_added, -> { order(created_at: :desc) }
    scope :coffee_highest_rated, -> { joins(:reviews).group(:drink_name).order('avg(rating) desc') }

    def store_attributes=(store_attributes)
        check = store_attributes[:name] == ""
        if check == false
              store = Store.find_or_create_by(:name => store_attributes[:name])
              self.store = store
        end
    end

    def same_drink_store
        Store.find(self.store_id).coffees.find_by(:drink_name => self.drink_name)
    end
    
end