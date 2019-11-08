class Reservation < ApplicationRecord
  belongs_to :customer, class_name: "User"
  belongs_to :admin, class_name: "User"
  belongs_to :game
  has_one :review
end
