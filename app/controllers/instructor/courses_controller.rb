class Instructor::CoursesController < ApplicationController
  before_action :authenticate_user!

  #set up the 'new.html.erb' web page
  def new
      @course = Course.new
  end

  #set the course table when user clicks the "create" button - and redirect to the instructor course page
  def create
    @course = current_user.courses.create(course_params)
    if @course.valid?
      redirect_to instructor_course_path(@course)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title,:description,:cost)
  end
end
