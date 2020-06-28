class AddDegreeProgramToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :degree_program, :string
  end
end
