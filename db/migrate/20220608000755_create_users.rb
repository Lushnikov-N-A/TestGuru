class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :login
      t.string :password
      t.string :role
      t.string :first_name
      t.string :last_name
      t.string :email
      t.decimal :telephone
      t.date :date_birth
      t.string :gender

      t.timestamps
    end
  end
end
