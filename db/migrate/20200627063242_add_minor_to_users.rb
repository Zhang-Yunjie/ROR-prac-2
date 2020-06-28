class AddMinorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_minor, :string
    add_column :users, :second_minor, :string
  end
end
