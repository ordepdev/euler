require "test/unit"

# Project Euler - Problem 3 #
class Euler
  def self.run(m)
    a=2
    while m>1
      if m%a==0
        m=m/a
      else
        a=a+1
      end
    end
    a
  end
end

class TestEuler < Test::Unit::TestCase
  def testing_euler
    assert_equal(6856, Euler.run(600851475143))
  end
end