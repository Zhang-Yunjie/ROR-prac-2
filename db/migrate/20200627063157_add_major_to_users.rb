class AddMajorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_major, :string
    add_column :users, :second_major, :string
  end
end
