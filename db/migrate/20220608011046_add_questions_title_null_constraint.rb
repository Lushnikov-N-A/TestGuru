class AddQuestionsTitleNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:questions, :title, false)
  end
end
