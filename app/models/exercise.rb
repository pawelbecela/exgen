class Exercise < ApplicationRecord
    has_many :notes, dependent: :destroy
end
