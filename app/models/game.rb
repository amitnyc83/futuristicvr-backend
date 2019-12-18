class Game < ApplicationRecord

  has_many :customers, class_name: "Customer"
  has_many :reviews
  has_many :reservations
  has_many :admin, class_name: "Admin" 
  belongs_to :genre


end
