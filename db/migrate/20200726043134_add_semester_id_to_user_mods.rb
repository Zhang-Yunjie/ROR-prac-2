class AddSemesterIdToUserMods < ActiveRecord::Migration[6.0]
  def change
    add_column :user_mods, :semester_id, :integer
    add_index :user_mods, :semester_id
  end
end
