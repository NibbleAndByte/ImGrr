class Image < ApplicationRecord
    has_many :favorites
    has_many :likes
    belongs_to :user
end
