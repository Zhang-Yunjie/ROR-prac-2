class User < ActiveRecord::Base
  has_many :user_mods
  has_many :mods, through: :user_mods

  validates :username, presence: true,
             uniqueness: {case_sensitive: false},
             length: { minimum: 1, maxinum: 25}
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email,
   presence: true, uniqueness: true,
   uniqueness: {case_sensitive: false},
   length: { minimum: 1, maxinum: 105},
   format: { with: VALID_EMAIL_REGEX }

  has_secure_password

end