class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name)
  end
end
