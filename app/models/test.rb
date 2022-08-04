# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category

  has_many :questions, dependent: :destroy
  has_many :test_passings, dependent: :destroy
  has_many :users, through: :test_passings

  validates :title, :level, presence: true
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :title, uniqueness: { scope: :level, message: 'Test.title and Test.level are not unique' }

  scope :easy_level, -> { where(level: 1) }
  scope :midle_level, -> { where(level: 2..4) }
  scope :hard_level, -> { where(level: 5..Float::INFINITY) }
  scope :sort_category_title, lambda { |category_title|
                                joins(:category)
                                  .where(categories: { title: category_title })
                                  .order(title: :desc)
                              }

  def self.sort_tests_by_category(test_category)
    joins(:category)
      .where(categories: { title: test_category })
      .order(title: :desc)
      .pluck(:title)
  end
end
