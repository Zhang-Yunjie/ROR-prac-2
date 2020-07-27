# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  seniority       :string
#  degree_program  :string
#  first_major     :string
#  second_major    :string
#  first_minor     :string
#  second_minor    :string
#  special_program :string
#  double_degree   :string
#
class User < ActiveRecord::Base
  has_many :user_mods, dependent: :destroy
  has_many :mods, through: :user_mods, dependent: :destroy

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
