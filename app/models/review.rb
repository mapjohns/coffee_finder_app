class Review < ActiveRecord::Base
    validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5}
    validates :content, :rating, presence: true
    validates :user_id, uniqueness: { message: "has already reviewed this coffee." }, if: :multiple_reviews, on: :create

    belongs_to :user
    belongs_to :coffee
    

    def multiple_reviews
        self.coffee.users.include?(self.user)
    end
end