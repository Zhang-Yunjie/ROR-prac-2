class CreateSemesters < ActiveRecord::Migration[6.0]
  def change
    create_table :semesters do |t|
      t.string :ay
      t.string :sem
      t.boolean :past

      t.timestamps
    end
  end
end
