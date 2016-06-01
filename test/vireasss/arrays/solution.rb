module Vireasss
  module Arrays
    class << self
      def replace(array)
        min_element = array.min
        array.map { |e| e < 0 ? min_element : e }
      end

      def search(array, query)
        len = array.size
        i = 0
        get_index = len / 2
        while array[get_index] != query && i < len
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
        get_index
      end
    end
  end
end
