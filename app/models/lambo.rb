class Lambo < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
end
