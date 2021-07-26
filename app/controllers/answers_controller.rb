class AnswersController < ApplicationController
  def index
    @answers = Answer.all
    @student = Student.find(params[:student_id])
  end

  def new
    @student = Student.find(params[:student_id])
    @answer = Answer.new
  end

  def create      
    questions = params[:answer][:questions]
    questions.each do |key, value|
       @answer = Answer.create(
       student_id: params[:answer][:student_id],
       question_id: value [:question_id],
       answer: value[:answer]
      )
    end
    if @answer.save
      redirect_to root_path
    else
      render:new
    end
  end

  
end
