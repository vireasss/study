module Vireasss
  module Arrays
    class << self
      def replace(array)
        new_array = array.map { |e| (e < 0 ? e = array.min : e ) }

      end

<<<<<<< e9f2d5a3e725d9384bee21b714cfddc6964f4cee
      def search(_array, _query)
        0
      end
=======
      def search(array, query)
        len = array.size
        array = array.sort
        i = 0
        get_index = len / 2
        while array[get_index] != query and i < len do
          if query > array[get_index]
            i = get_index + 1
          else
            len = get_index - 1
          end
          get_index = (i + len) / 2
        end
        if array[get_index] != query
          get_index = -1
        end
        return get_index
       end
>>>>>>> added sort array
    end
  end
end

array = [ 3, 2, -8, 4, 1, -6, 7, 8, -99 ]
puts new_array = Vireasss::Arrays.replace(array)
