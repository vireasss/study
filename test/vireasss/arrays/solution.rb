module Vireasss
  module Arrays
    class << self
      def replace(array)
<<<<<<< HEAD
        new_array = array.map { |e| (e < 0 ? e = array.min : e ) }
<<<<<<< HEAD
=======
=======
        min_element = array.min
<<<<<<< HEAD
        array.map { |e| (e < 0 ? min_element : e ) }
>>>>>>> b358b34... re-correcting code on 1 homework
=======
        array.map { |e| e < 0 ? min_element : e }
<<<<<<< HEAD
>>>>>>> 0dce9aa... delete return in def search and delete () in replace

>>>>>>> 220ee36... delete commit in code - fp
=======
>>>>>>> 2740e45... fix remarks correction
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
        get_index = -1 if array[get_index] != query

        get_index
      end
    end
  end
end
