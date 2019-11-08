class Game < ApplicationRecord

  has_many :customers, class_name: "Customer"
  has_many :reviews
  has_many :reservations
  belongs_to :admin, class_name: "Admin"
  belongs_to :genre


end
