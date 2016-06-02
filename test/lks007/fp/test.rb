require 'csv'
require './test/test_helper.rb'
require_relative './solution.rb'

class Lks007::FpTest < Minitest::Test
  # Посчитать средний рейтинг фильмов по версии imdb с заданным возрастным ограничением.
  # Фильмы у которых рейтиг не задан или равен 0 не учитывать в расчете среднего.
  def test_rating
    array = CSV.readlines('./test/fixtures/films.csv', headers: true)

    result = Lks007::Fp.rating(array, '18+')
    assert result == 5.477777777777778

    result = Lks007::Fp.rating(array, '0+')
    assert result == 6.529878648737269
  end

  # Посчитать количесвто цифр в названиях всех фильмов за определенный год
  def test_chars_count
    array = CSV.readlines('./test/fixtures/films.csv', headers: true)

    result = Lks007::Fp.chars_count(array, 2003)
    assert result == 29

    result = Lks007::Fp.chars_count(array, 2005)
    assert result == 11
  end
end
