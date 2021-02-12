class UserPlant < ActiveRecord::Base
    belongs_to :user
    belongs_to :plant
    validates :user, :plant, presence: true
end