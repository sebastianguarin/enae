class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new()
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
    
    end
    render :new
  end

  def edit
    
  end

  def update
    render :index
  end

  def destroy
    
  end
end
