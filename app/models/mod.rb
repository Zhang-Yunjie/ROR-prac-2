# == Schema Information
#
# Table name: mods
#
#  id                  :integer          not null, primary key
#  module_code         :string
#  module_description  :text
#  module_title        :string
#  module_MC           :integer
#  module_prerequisite :string
#
class Mod < ApplicationRecord
  has_many :user_mods
  has_many :users, through: :user_mods

  validates :module_code, presence: true,
    length: { minimum: 6, maximum: 10 },
    uniqueness: true

  validates :module_MC, presence: true,
    numericality: { minimum: 0, maximum: 8,  only_integer: true }

  validates :module_title, :module_description, presence: true
end
