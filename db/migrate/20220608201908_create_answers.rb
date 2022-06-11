# frozen_string_literal: true

class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :title, null: false
      t.references :question, null: false, foreign_key: true
      t.boolean :correct, null: false, default: false

      t.timestamps
    end
  end
end
