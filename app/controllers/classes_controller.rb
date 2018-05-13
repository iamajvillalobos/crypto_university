class ClassesController < ApplicationController
  def index
    @classes = Subject.order(created_at: :desc)
  end

  def show
  end
end
