class StudentClassesController < ApplicationController
    def index
        @student_classes = StudentClass.all
    end
    def show
        @student_class = StudentClass.find(params[:id])
    end

    def new
        @new_student_class = StudentClass.new
    end

    def create 
        new_student_class = StudentClass.create(student_class_params(:student_id, :school_class_id))
        new_student_class.update(current: true)
        redirect_to student_path(new_student_class.student)
    end

    def edit
        @student_class = StudentClass.find(params[:id])
    end

    def update
        student_class = StudentClass.find(params[:id])
        student_class.update(student_class_params(:student_id, :school_class_id, :current))
        redirect_to student_class_path(student_class)
    end

    def destroy
        student_class = StudentClass.find(params[:id])
        student_class.destroy
        redirect_to student_path(student_class.student)
    end

    private

    def student_class_params(*args)
        params.require(:student_class).permit(*args)
    end
end
