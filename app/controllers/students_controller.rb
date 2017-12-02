class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    #binding.pry
    @student = Student.new(first_name: params[:student][:first_name],
                           last_name: params[:student][:last_name]
                          )
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end
end
