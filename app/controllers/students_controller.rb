class StudentsController < ApplicationController

  def new
    @student = Student.new(:name => params[:first], :last_names => params[:last])
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
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
    else
      render :action => :edit
    end
  end
end
