class AddTestsCategoryIdNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:tests, :category_id, false)
  end
end
