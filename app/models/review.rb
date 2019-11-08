class Review < ApplicationController

  belongs_to :customer, class_name: "Customer"
  belongs_to :game
  belongs_to :reservation

end
