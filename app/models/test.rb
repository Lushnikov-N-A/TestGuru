# frozen_string_literal: true

class Test < ApplicationRecord
  def self.sort_tests_by_category(category)
    Test.where(category_id: Category.find_by(title: category).id).order('id DESC').pluck(:title)
  end
end
