class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :paintings, through: :favorites

    def self.find_user(username)
        find_user = User.find_by(username:username)

        if find_user
            return find_user
        else
            User.create(username:username)
        end
    end
end
