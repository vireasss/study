module Vireasss
  module Arrays
    class << self
      def replace(array)
        new_array = array.map { |e| (e < 0 ? e = array.min : e ) }

      end

      def search(_array, _query)
        0
      end
    end
  end
end

array = [ 3, 2, -8, 4, 1, -6, 7, 8, -99 ]
puts new_array = Vireasss::Arrays.replace(array)
