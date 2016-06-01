module Vireasss
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array, access_level)
        array = array.map { |film| film if film['access_level'].to_i == access_level.to_i && film['rating_kinopoisk'].to_f > 0 }.compact
        sum = 0
        for film in array
          sum += film['rating_kinopoisk'].to_f
        end
        sum / array.size
      end

      def countries_count(films, year)
        films = films.map { |film| film if film['year'].to_i == year.to_i }.compact
        all_countries = []
        for film in films
          next if film['country'].nil?
          country_names = film['country'].to_s.gsub(/\s/, '').split(',')
          for get_country_name in country_names
            all_countries.push(get_country_name) unless all_countries.include?(get_country_name)
          end
        end
        result = {}
        for country in all_countries
          shot = 0
          for film in films
            country_name = film['country'].to_s.gsub(/\s/, '')
            shot += 1 if country_name.include?(country)
          end
          result[country] = shot
        end
        result
      end
    end
  end
end
