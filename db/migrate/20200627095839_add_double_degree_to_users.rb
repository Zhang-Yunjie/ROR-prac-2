class AddDoubleDegreeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :double_degree, :string
  end
end
