class AddAnswersQuestionIdNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:answers, :question_id, false)
  end
end
