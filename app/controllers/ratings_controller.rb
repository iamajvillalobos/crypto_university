class RatingsController < ApplicationController
  def new
    @rating = Rating.new(
      professor: find_teacher,
      subject: find_subject
    )
  end

  def create
    byebug
  end

  private

  def find_teacher
    Professor.find(params[:professor_id])
  end

  def find_subject
    Subject.find(params[:class_id])
  end
end
