class UserMod < ApplicationRecord
  belongs_to :user
  belongs_to :mod

  validates prerequisite

  def prerequisite
    @mod.find{ |m| puts m.title == "cs1010s" }
    if puts mod.module_title == "cs2040" && UserMod.find_by(mods: @mod)
      errors.add('Need to take CS1101s first before taking CS2040')
    end
  end
end
