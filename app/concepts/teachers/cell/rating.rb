module Teachers
  module Cell
    class Rating < ApplicationCell
      MAX_RATING = 5

      def subject_rating
        rating = model[:teacher]
          .ratings
          .where(subject_id: model[:course].id)
          .average(:amount)
          .to_i

        return 0 if rating.nil?

        rating
      end

      def subject_rating_remaining
        MAX_RATING - subject_rating
      end
    end
  end
end
