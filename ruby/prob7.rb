require "test/unit"

class Euler
  def self.v1(m)
    i=3
    r=[1,2]
    while r.length<=m
      r<<i unless (2..Math.sqrt(i)).any? { |n| i%n==0 }
      i+=2 #except 1 and 2 all primes are odd
    end
    r.last
  end
end

class TestEuler < Test::Unit::TestCase
  def testing_euler
    assert_equal(13, Euler.v1(6))
    assert_equal(104743, Euler.v1(10001))
  end
end