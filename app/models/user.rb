class User < ApplicationRecord
 
 validates_uniqueness_of :username, uniqueness: { case_sensitive: false }
 validates :username, :password, :type, :name, presence: true
 has_secure_password


 scope :customers, -> {where(type: 'Customer')}
 scope :admins, -> { where(type: 'Admin')}

end
