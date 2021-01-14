class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @new_student = Student.new
  end

  def create
    new_student = Student.create(strong_params)
    redirect_to student_path(new_student)
  end

  def edit
    @student_to_edit = Student.find(params[:id])
  end

  def update
    student_to_edit = Student.find(params[:id])
    student_to_edit.update(strong_params)
    redirect_to student_path(student_to_edit)
  end

  def destroy
    Student.destroy(params[:id])
    redirect_to students_path
  end

  private

  def strong_params
    params.require(:student).permit(:first_name, :last_name)
  end

  # or
  # def params(*arg)
  # params.require(:student).permit(*arg)
#   end

end
