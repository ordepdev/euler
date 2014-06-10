require "test/unit"

class Euler
  def self.v1(a,b)
    (a..b).reduce(:+)**2 - (a..b).inject { |c,d| c + d*d  }
  end

  def self.v2(a,b)
    r=(a..b).inject([0,0]) { |c,d| [c[0]+d, c[1]+d**2] } #only one loop
    r[0]**2-r[1]
  end
end

class TestEuler < Test::Unit::TestCase
  def testing_euler
    assert_equal(2640, Euler.v1(1,10))
    assert_equal(25164150, Euler.v1(1,100))
    assert_equal(2640, Euler.v2(1,10))
    assert_equal(25164150, Euler.v2(1,100))
  end
end
