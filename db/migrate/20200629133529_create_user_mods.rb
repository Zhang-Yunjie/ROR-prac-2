class CreateUserMods < ActiveRecord::Migration[6.0]
  def change
    create_table :user_mods do |t|
      t.references :user, null: false, foreign_key: true
      t.references :mod, null: false, foreign_key: true

      t.timestamps
    end
  end
end
