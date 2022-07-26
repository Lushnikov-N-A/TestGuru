# frozen_string_literal: true

class CreateTestPassings < ActiveRecord::Migration[7.0]
  def change
    create_table :test_passings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true
      t.integer :correct_questions, default: 0

      t.timestamps
    end
  end
end
