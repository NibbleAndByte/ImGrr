class User < ApplicationRecord
    has_secure_password

    has_many :likes
    has_many :favorites
    has_many :images
end
