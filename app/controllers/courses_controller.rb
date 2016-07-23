class CoursesController < ApplicationController
  def new
    @course = Course.new 
  end

  def create
    @course = Course.new(course_params)
    if @course.save!
      flash[:success] = "Course Created!"
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @courses = Course.all
  end  
private

def course_params
params.require(:course).permit(:name, :description, :status, :limit, :start_date)
end

end


