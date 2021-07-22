class QuestionpapersController < ApplicationController
  def index
    @questionpapers = QuestionPaper.all
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @questionpaper = QuestionPaper.new
  end

  def create
    @questionpaper = QuestionPaper.create(question_paper_params)
    if @questionpaper.save
      redirect_to teachers_path
    else
      render :new
    end
  end

  private

  def question_paper_params
    params.require(:question_paper).permit(:name, :teacher_id)
  end
  
end
