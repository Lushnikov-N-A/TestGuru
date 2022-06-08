class AddUsersRoleNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:users, :role, false)
  end
end
