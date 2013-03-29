class AsignaturesController < ApplicationController

  def index
    @asignatures = Asignature.where(course_id: params[:course_id])
  end

  def show
    
  end

  def new
    course = params[:course_id]
    @asignature = Asignature.new(course_id: course)
    @asignatures = Asignature.where(course_id: params[:course_id])
  end

  def create
    course = params[:course_id]
    @asignature = Asignature.new(params[:asignature])
    if @asignature.save
      #flash[:notice] = "Asignatura #{@asignature.name} creada para #{course.name}"
      @asignature = Asignature.new(course_id: course)
    else
    end
    @asignatures = Asignature.where(course_id: course)
    render :new
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end
end
