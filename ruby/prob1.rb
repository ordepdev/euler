require "test/unit"

# Project Euler - Problem 1 #
class Euler
  def self.run(a,b,c)
    sum_multiples(a,c) + sum_multiples(b,c) - sum_multiples(a*b, c)
  end

  def self.sum_multiples(a,c)
    b = []
    (1..c-1).select do |i|
      b.push(i) if i % a == 0
    end
    b.reduce :+
  end
end

class TestEuler < Test::Unit::TestCase
  def testing_euler
    assert_equal(233168, Euler.run(3,5,10000000))
  end
end