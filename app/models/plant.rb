class Plant < ActiveRecord::Base
    has_many :user_plants
    has_many :users, through: :user_plants

end