class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :title
      t.integer :question_id
      t.boolean :correct

      t.timestamps
    end
  end
end
