# frozen_string_literal: true

class User < ApplicationRecord
  has_many :test_passings, dependent: :destroy # "нет связи с пройденными тестами" - вот этот комментарий не понял, тут же, можно сказать, "прямая" связь?
  has_many :tests_author, class_name: 'Test', foreign_key: :author_id

  belongs_to :test, optional: true

  def test_level_pass(level_pass_test)
    Test.joins('INNER JOIN test_passings ON tests.id = test_passings.test_id').where(level: level_pass_test)
  end
end
