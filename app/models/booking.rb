class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lambo
  enum status: %i[pending accepted rejected]
end
