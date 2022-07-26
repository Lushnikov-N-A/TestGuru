# frozen_string_literal: true

class User < ApplicationRecord
  has_many :test_passings
  has_many :author, class_name: 'Test', foreign_key: :author_id

  def test_level_pass(level_pass_test)
    Test.joins('INNER JOIN test_passings ON tests.id = test_passings.test_id').where(level: level_pass_test)
  end
end
