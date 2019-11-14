class Customer < User
  has_many :games
  has_many :reviews
  has_many :reservation

end
