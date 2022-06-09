class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nickname, null: false
      t.string :login, null: false
      t.string :password, null: false
      t.string :role, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
