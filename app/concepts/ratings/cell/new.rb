module Ratings
  module Cell
    class New < ApplicationCell
      def full_name
        teacher = Professor.find(model[:rating].professor_id)
        "#{teacher.first_name} #{teacher.last_name}"
      end

      def teacher
        Professor.find(model[:rating].professor_id)
      end

      def course
        Subject.find(model[:rating].subject_id)
      end
    end
  end
end
