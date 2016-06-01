module Vireasss
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(_array, _access_level)

        _array = _array.map { |_array| _array if _array["access_level"].to_i >= _access_level.to_i and _array["rating_kinopoisk"].to_f > 0}.compact
        sum = 0
        for film in _array
          sum = sum + film["rating_kinopoisk"].to_f
        end
        sum / _array.size
      end

      def countries_count(_films, _year)
        0
      end
    end
  end
end
