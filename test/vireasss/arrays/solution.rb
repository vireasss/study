module Vireasss
  module Arrays
    class << self
      def replace(array)
<<<<<<< HEAD
        new_array = array.map { |e| (e < 0 ? e = array.min : e ) }
=======
        min_element = array.min
        new_array = array.map { |e| (e < 0 ? min_element : e ) }
>>>>>>> 6f6ab757e27895cab17362c647d6ae2dea193bb4

      end

      def search(array, query)
<<<<<<< HEAD
          len = array.size
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
=======
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
>>>>>>> 6f6ab757e27895cab17362c647d6ae2dea193bb4
        return get_index
       end
    end
  end
end
