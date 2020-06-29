class Mod < ApplicationRecord
    has_many :user_mods
    has_many :users, through: :user_mods

    validates :module_code, presence: true, 
    length: { minimum: 6, maximum: 7 }, 
    uniqueness: true

    validates :module_MC, presence: true, 
    numericality: { minimum: 0, maximum: 8,  only_integer: true }

    validates :module_title, presence: true

    validates :module_description, presence: true

end 