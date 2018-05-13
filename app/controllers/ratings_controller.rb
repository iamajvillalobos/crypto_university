class RatingsController < ApplicationController
  def new
    @rating = Rating.new(
      professor: find_teacher,
      subject: find_subject
    )
  end

  def create
    new_rating = Rating.new(
      amount: rating_params[:amount],
      description: rating_params[:description],
      professor: find_teacher,
      subject: find_subject,
    )

    if new_rating.save
      redirect_to class_path(find_subject)
      flash[:success] = "Thank you for rating our teacher."
    else
      redirect_to new_class_professor_rating_path(find_subject, find_teacher)
      flash[:error] = "Please fill up all the fields"
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:amount, :description, :professor_id, :class_id)
  end

  def find_teacher
    Professor.find(params[:professor_id])
  end

  def find_subject
    Subject.find(params[:class_id])
  end
end
