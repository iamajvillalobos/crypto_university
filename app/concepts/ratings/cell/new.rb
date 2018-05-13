module Ratings
  module Cell
    class New < ApplicationCell
      def full_name
        "#{model[:teacher].first_name} #{model[:teacher].last_name}"
      end
    end
  end
end
