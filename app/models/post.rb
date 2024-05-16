class Post < ApplicationRecord

    validates :data, presence: true
    validates :title, presence: true

    searchkick
end
