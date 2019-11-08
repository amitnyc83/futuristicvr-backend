class Reservation < ApplicationRecord
  belongs_to :customer, class_name: "Customer"
  belongs_to :admin, class_name: "Admin"
  belongs_to :game
  has_one :review
end
