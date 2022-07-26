# frozen_string_literal: true

class Test < ApplicationRecord
  has_many :questions
  belongs_to :user

  def self.sort_tests_by_category(test_category)
    joins('INNER JOIN categories ON category_id = categories.id')
      .where(categories: { title: test_category })
      .order(:title).pluck(:title)
  end
end
