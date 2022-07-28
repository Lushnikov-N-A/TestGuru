# frozen_string_literal: true

class Test < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :test_passings, dependent: :destroy
  has_many :author, class_name: 'User', foreign_key: :author_id
  has_many :users, through: :test_passings

  belongs_to :user, optional: true
  belongs_to :author, class_name: 'User',optional: true
  belongs_to :category, optional: true

  def self.sort_tests_by_category(test_category)
    joins(:category)
     .where(categories: { title: test_category })
     .order(title: :desc)
     .pluck(:title)
  end
end
