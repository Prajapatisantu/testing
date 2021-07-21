class QuestionsController < ApplicationController
   before_action :set_question_id
   
  def index
    @questions = Question.all
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @question = Question.new
  end

  def create
    @question = Question.create!(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  private
  
  def question_params
    params.require(:question).permit(:title, :option1, :option2, :option3, :option4,:teacher_id, :admin_id, :question_paper_id)
  end

  def set_question_id
    resource, id = request.path.split('/')[1, 2]
    @questionable = resource.singularize.classify.constantize.find(id)
  end
end
