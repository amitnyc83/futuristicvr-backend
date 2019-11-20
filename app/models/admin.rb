class Admin < User
  has_many :games
  has_many :reservations
end
