# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :find_test, only: %i[create new]
  before_action :find_question, only: %i[show destroy show update edit]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def show
    @test = @question.test
  end

  def new
    @question = @test.questions.new
    if @question.save
      redirect_to test_questions_url
    else
      render :new
    end
  end

  def edit; end

  def update
    if @question.update(question_params)
      redirect_to test_url(id: @question.test.id)
    else
      render :edit
    end
  end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to test_pth(@test)
    else
      render :new
    end
  end

  def destroy
    @question.destroy
    redirect_to test_url
  end

  private

  def question_params
    params.require(:question).permit(:title)
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def find_test
    @test = Test.find(params[:test_id])
  end

  def rescue_with_question_not_found
    render plain: 'Вопрос не найден'
  end
end
