module Teachers
  module Cell
    class Rating < ApplicationCell
      MAX_RATING = 5

      def subject_rating
        rating = model[:teacher].ratings.find do |r|
          r.subject_id == model[:course].id
        end

        return 0 if rating.nil?

        rating.amount
      end

      def subject_rating_remaining
        MAX_RATING - subject_rating
      end
    end
  end
end
