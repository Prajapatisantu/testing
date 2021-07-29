class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.save
       redirect_to root_path
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:name,:question_paper_id)
  end
end
