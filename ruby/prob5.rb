require "test/unit"

# Project Euler - Problem 5 #
class Euler
  def self.v1(m)
    a=1
    while true
      break unless (2..m).any? { |b| a%b!=0 }
      a=a+1
    end
    a
  end

  def self.is_prime? x
    (2..x-1).each { |e| return false if e % x == 0 }
    true
  end
end

class TestEuler < Test::Unit::TestCase
  def testing_euler
    assert_equal(232792560, Euler.v1(20))
    #assert_equal(232792560, Euler.v2(20))
  end
end