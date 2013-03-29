class CoursesController < ApplicationController

  def index
    @course = Course.new()
    render :new
  end

  def new
    @course = Course.new()
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      flash[:notice] = "Curso #{@course.name} creado"
      @course = Course.new()
    else
    end
    render :new
  end

  def edit
    
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      flash[:notice] = "Curso #{@course.name} actualizado"
    else

    end
    render :new
  end

  def destroy
    
  end
end
