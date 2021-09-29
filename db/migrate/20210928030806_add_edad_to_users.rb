class AddEdadToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :edad, :integer
  end
end
