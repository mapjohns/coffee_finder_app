class User < ActiveRecord::Base
    has_secure_password
    validates :username, uniqueness: true
    validates :password, :password_confirmation, :username, :first_name, :last_name, presence: true
    
end