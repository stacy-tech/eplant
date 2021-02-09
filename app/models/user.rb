class User < ActiveRecord::Base
    has_secure_password
    has_many :user_plants
    has_many :plants, through: :user_plants
    validates :username, :email, :password_digest, presence: true
end
