class Photo < ApplicationRecord
    validates :title, presence: true
    validates :image, presence: true
    validates :description, presence: true
end
