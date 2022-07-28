# frozen_string_literal: true

class TestPassing < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :test, optional: true
end
