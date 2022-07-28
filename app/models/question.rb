# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :test, optional: true

  has_many :answers, dependent: :destroy
end
