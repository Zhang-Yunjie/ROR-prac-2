class CreateMods < ActiveRecord::Migration[6.0]
  def change
    create_table :mods do |t|
      t.string :module_code
      t.text :module_description
      t.string :module_title
      t.integer :module_MC
    end
  end
end