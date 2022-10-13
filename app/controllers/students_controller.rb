class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.order('grade desc')
        render json: grades
    end

    def highest_grade
        student = Student.find_by(:grade => Student.maximum(:grade))
        render json: student
    end



end
