# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User'
  belongs_to :category

  has_many :questions, dependent: :destroy
  has_many :test_passings, dependent: :destroy
  has_many :users, through: :test_passings

  def self.sort_tests_by_category(test_category)
    joins(:category)
     .where(categories: { title: test_category })
     .order(title: :desc)
     .pluck(:title)
  end
end
