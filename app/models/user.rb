# frozen_string_literal: true

class User < ApplicationRecord
  has_many :test_passings, dependent: :destroy
  has_many :tests, through: :test_passings, dependent: :destroy
  has_many :tests_author, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  def test_level_pass(level_pass_test)
    tests.where(level: level_pass_test)
  end
end
