class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lambo
  enum status: %i[pending Accepted Rejected]
end
