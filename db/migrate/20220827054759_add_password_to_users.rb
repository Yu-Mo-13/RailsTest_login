class AddPasswordToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :user, :password, :string
  end
end
