class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :user do |t|

      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.timestamps
    end
  end
end
