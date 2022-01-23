class User < ApplicationRecord
  validates :name, 
              presence:   true,
              length:     { maximum: 50 }
              
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
              presence:   true,
              length:     { maximum: 250 },
              format:     { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
              uniqueness: { case_sensitive: false }

  validates :address,
              presence:   true,
              length:     { maximum: 250 }
              uniqueness: true

  validates :age,
              presence:   true,
              length:     { minimum: 2 }

  validates :evaluation,
              presence:   true
end
