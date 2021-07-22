class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(answer_params)
    if @answer.save
    else
      render:new
    end
  end

  def show
  end

  private

    def answer_params
      params.require(:answer).permit(:answer,:question_id,:student_id)
    end
end
