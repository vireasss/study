module Vireasss
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array, access_level)

        array = array.map { |array| array if array['access_level'].to_i >= access_level.to_i && array['rating_kinopoisk'].to_f > 0 }.compact
        sum = 0
        for film in array
          sum += film['rating_kinopoisk'].to_f
        end
        sum / array.size
      end

      def countries_count(_films, _year)
        0
      end
    end
  end
end
