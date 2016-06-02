require 'csv'
require './test/test_helper.rb'
require_relative './solution.rb'

class Nmorozov::Fp2Test < Minitest::Test
  def setup
    @array = generate :array
    @my_array = Nmorozov::Fp2::MyArray.new(@array)
    @int = generate :int
  end

  def test_my_each
    skip
    result = []
    my_result = []

    func = -> (element) { result << element if element.odd? }
    my_func = -> (element) { my_result << element if element.odd? }

    assert @array.each(&func) == @my_array.my_each(&my_func)
    assert result == my_result
  end

  def test_my_map
    skip
    func = -> (element) { element * @int }
    assert @array.map(&func) == @my_array.my_map(&func)
    assert @array.map(&func).map(&func) == @my_array.my_map(&func).my_map(&func)
  end

  def test_my_compact
    skip
    func = -> (element) { element if element.even? }
    func_another = -> (element) { element * @int }
    assert @array.map(&func).compact == @my_array.my_map(&func).my_compact
    assert @array.map(&func).compact.map(&func_another) == @my_array.my_map(&func).my_compact.my_map(&func_another)
  end

  def test_my_reduce
    skip
    func = -> (acc, element) { acc * element }

    assert @array.reduce(&func) == @my_array.my_reduce(&func)
    assert @array.reduce(2, &func) == @my_array.my_reduce(2, &func)
    assert @array.reduce(&:+) == @my_array.my_reduce(&:+)
  end
end
