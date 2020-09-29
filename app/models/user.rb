class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :paintings, through: :favorites

    def self.find_user(username)
        find_user = User.find_or_create_by(username)
    end
end
