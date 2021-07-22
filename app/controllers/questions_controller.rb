class QuestionsController < ApplicationController
   before_action :set_type_id
    
  def index
    @questions = @questionable.questions
  end

  def new
    # @teacher = Teacher.find(params[:teacher_id])
    @question = @questionable.questions.new
  end

  def create
    @question = @questionable.questions.create!(question_params)
    if @question.save
      redirect_to students_path
    else
      render :new
    end
  end

  private
  
  def question_params
    params.require(:question).permit(:title, :option1, :option2, :option3, :option4, :question_paper_id)
  end

  def set_type_id
    resource, id = request.path.split('/')[1, 2]
    @questionable = resource.singularize.classify.constantize.find(id)
  end
end
