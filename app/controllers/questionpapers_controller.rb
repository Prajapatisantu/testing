class QuestionpapersController < ApplicationController
  def index
    @questionpapers = QuestionPaper.all
  end

  def new
    @questionpaper = QuestionPaper.new
  end

  def create
    @questionpaper = QuestionPaper.create(question_paper_params)
    if @questionpaper.save
    else
      render :new
    end
  end

  private

  def question_paper_params
    params.require(:question_paper).permit(:name, :teacher_id)
  end
  
end
