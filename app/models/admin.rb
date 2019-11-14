class Admin < User
  has_many :games
  has_mnay :reservations
end
