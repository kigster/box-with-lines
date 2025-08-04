# frozen_string_literal: true

module Fractional
  module Ai
    # Represents a point on the board with x and y coordinates
    #
    # @example Creating a new point
    #   point = Point.new(5, 10)
    #   puts point.to_s  # => "5,10"
    #
    # @author Fractional AI
    # @since 0.1.0
    class Point < Data.define(:x, :y)
      # Initialize a new Point with x and y coordinates
      # Now handled by Data.define automatically

      # Converts the point to a string representation
      #
      # @return [String] formatted as "x,y"
      # @example
      #   Point.new(5, 10).to_s  # => "5,10"
      def to_s
        "#{x},#{y}"
      end

      # Validates that the point has valid coordinates
      #
      # @return [Boolean] true if coordinates are non-negative integers
      # @example
      #   Point.new(5, 10).valid?   # => true
      #   Point.new(-1, 5).valid?   # => false
      #   Point.new(5.5, 10).valid? # => false
      def valid?
        x.is_a?(Integer) && y.is_a?(Integer) &&
          x >= 0 && y >= 0
      end

      # Equality comparison, hash, and eql? are automatically provided by Data
    end
  end
end
