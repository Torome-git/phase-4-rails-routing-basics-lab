class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        studentGrades = Student.order(grade: :desc)
        render json: studentGrades
    end
end
