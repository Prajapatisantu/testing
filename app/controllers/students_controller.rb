class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.save
    else
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:name,:question_paper_id, :question_id)
  end
end
