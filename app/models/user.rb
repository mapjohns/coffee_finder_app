class User < ActiveRecord::Base
    has_secure_password
    validates :username, uniqueness: true
    validates :password, :password_confirmation, :username, :first_name, :last_name, presence: true
    
    has_many :reviews
    has_many :coffees, through: :reviews

    def self.oauth(auth)
        user = User.find_or_create_by(g_id: auth['uid']) do |u|
            u.first_name = auth['info']['name'].split[0]
            u.last_name = auth["info"]["name"].split[1..-1].join(" ")
            u.username = SecureRandom.base64(10)
            u.password = SecureRandom.base64(50)
            u.password_confirmation = u.password
            u.g_id = auth['uid']
        end
    end
end