class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_lesson


  def show
    
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  protected
  
  def require_authorized_for_current_lesson
    if current_user.enrolled_in?(current_lesson) == false
      redirect_to course_path(current_lesson.section.course), alert: 'You need to enroll to view lessons'
    end
  end


end
