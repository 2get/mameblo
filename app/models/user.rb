class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  has_secure_password

  validates :name, presence: true, length: {maximum: 50}


  VALID_NAME_REGEX = /[a-z]+\z/i
  validates :name, presence: true,
  format: { with: VALID_NAME_REGEX },
  uniqueness: true
  
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
