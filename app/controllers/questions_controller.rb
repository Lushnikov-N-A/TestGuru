# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :question_by_id, only: %i[show destroy]
  before_action :find_test, only: [:create]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = Question.where(test_id: params[:test_id])
  end

  def show
    render json: { question: @question }
  end

  def new; end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to @question
    else
      redirect_to new_test_question_url
    end
  end

  def destroy
    @question.destroy
    redirect_to new_test_question_url
  end

  private

  def question_params
    params.require(:question).permit(:title)
  end

  def question_by_id
    @question = Question.find(params[:id])
  end

  def find_test
    @test = Test.find(params[:test_id])
  end

  def rescue_with_question_not_found
    render plain: 'Вопрос не найден'
  end
end