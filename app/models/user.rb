# frozen_string_literal: true

class User < ApplicationRecord
  def test_level_pass(level_pass_test)
    Test.joins('INNER JOIN test_passings ON tests.id = test_id').where(level: level_pass_test).pluck(:title)
  end
end
