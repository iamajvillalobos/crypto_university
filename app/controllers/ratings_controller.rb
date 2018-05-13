class RatingsController < ApplicationController
  def new
    @rating = Rating.new(
      professor: find_teacher,
      subject: find_subject
    )
  end

  private

  def find_teacher
    Professor.find(params[:teacher])
  end

  def find_subject
    Subject.find_by(slug: params[:class_id])
  end
end
