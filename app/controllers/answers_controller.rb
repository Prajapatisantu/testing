class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def new
    p 111111111
    @student = Student.find(params[:student_id])
    # @questionpaper_question = QuestionPaper.find(params[:student_questionpaper_id])
    p @student
    p 111111111
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
      params.require(:answer).permit(:ans1,:ques1,:student_id)
    end
end
