# frozen_string_literal: true

class TestsController < ApplicationController
  def index
    render plain: { test: Test.all }
  end
end
