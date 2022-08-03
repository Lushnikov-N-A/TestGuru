# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question

  scope :correct_answers, -> { where(correct: true) }

  validates :title, presence: true

  validate :answers_amount_for_qustion, on: :create

  private

  def answers_amount_for_qustion
    errors.add(:base, 'Out of range (1..4) amount answers for question!') if question.answers.count >= 4
  end
end
