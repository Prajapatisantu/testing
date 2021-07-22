class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
    # @admin.questions.build
  end

  def show
    @admin = Admin.find(params[:id])
  end

  private

  def admin_params
    params.require(:admin).permit(:name)
  end
end
