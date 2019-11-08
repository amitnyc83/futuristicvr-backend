class Review < ApplicationController

  belongs_to :customer, class_name: "User"
  belongs_to :game
  belongs_to :reservation

end
