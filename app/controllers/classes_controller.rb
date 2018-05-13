class ClassesController < ApplicationController
  def index
    @classes = Subject.order(created_at: :desc)
  end

  def show
    @class = Subject.find(params[:id])
    @teachers = @class.professors
  end
end
