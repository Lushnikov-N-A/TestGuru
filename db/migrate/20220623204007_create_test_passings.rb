# frozen_string_literal: true

class CreateTestPassings < ActiveRecord::Migration[7.0]
  def change
    create_table :test_passings do |t|
      t.integer :user_id, null: false
      t.integer :test_id, null: false
      t.integer :correct_questions, default: 0

      t.timestamps
    end
  end
end
