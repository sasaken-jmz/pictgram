class User < ApplicationRecord
  validates :name, presence: true,
    length:{maximum: 15}
    
  VALID_EMAIL_REGEX = /\S+@\S+.\S+/i
  validates :email, presence: true,
    format: {with: VALID_EMAIL_REGEX}
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-zA-Z\d]{8,32}\z/i
  has_secure_password
  validates :password, presence: true,
    format: {with: VALID_PASSWORD_REGEX}
    
end
