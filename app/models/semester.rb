class Semester < ApplicationRecord
    validates :ay, presence: true
    validates :sem, presence: true

end
