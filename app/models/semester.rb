# == Schema Information
#
# Table name: semesters
#
#  id         :integer          not null, primary key
#  ay         :string
#  sem        :string
#  past       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Semester < ApplicationRecord
  validates :ay, :sem, presence: true
  has_many :user_mods, dependent: :destroy
end
