class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lambo
  enum :status, [:pending, :accepted, :rejected]
end
