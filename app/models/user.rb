# frozen_string_literal: true

require 'digest/sha1'

class User < ApplicationRecord
  has_many :test_passings, dependent: :destroy
  has_many :tests, through: :test_passings, dependent: :destroy
  has_many :tests_author, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_secure_password

  def test_level_pass(level_pass_test)
    tests.where(level: level_pass_test)
  end

  def test_passing(test)
    test_passings.order(id: :desc).find_by(test_id: test.id)
  end
end
