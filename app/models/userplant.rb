class UserPlant < ActiveRecord::Base
    belongs_to :user
    belongs_to :plants
end