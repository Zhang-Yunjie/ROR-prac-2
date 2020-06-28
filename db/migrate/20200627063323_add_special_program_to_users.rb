class AddSpecialProgramToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :special_program, :string
  end
end
