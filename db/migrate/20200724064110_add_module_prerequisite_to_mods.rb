class AddModulePrerequisiteToMods < ActiveRecord::Migration[6.0]
  def change
    add_column :mods, :module_prerequisite, :string
  end
end
