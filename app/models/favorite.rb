class Favorite < ApplicationRecord
    belongs_to :image
    belongs_to :user
end
