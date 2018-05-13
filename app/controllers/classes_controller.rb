class ClassesController < ApplicationController
  def index
    @classes = Subject.order(created_at: :desc)
  end

  def show
    @class = Subject.friendly.find(params[:id])
    @teachers = @class.professors
  end
end
