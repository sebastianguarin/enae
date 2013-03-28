class StudentsController < ApplicationController

  def new
    @student = Student.new(:name => params[:first], :last_names => params[:last])
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      current_user.rol_type = @student.class.name
      current_user.rol_id = @student.id
      current_user.save
      redirect_to student_path(@student)
    else
      render :action => :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to root_path
    else
      render :action => :edit
    end
  end

  def show
    @student = Student.find(params[:id])
  end
end
