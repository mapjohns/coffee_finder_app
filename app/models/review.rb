class Review < ActiveRecord::Base
    validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5}
    validates :content, :rating, presence: true

    belongs_to :user
    belongs_to :coffee
    
end