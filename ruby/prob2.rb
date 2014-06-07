require "test/unit"

# Project Euler - Problem 2 #
class Euler
  def self.run(m)
    s=0
    a=b=1
    c=a+b
    while c<=m
      s=s+c
      a=b+c
      b=a+c
      c=a+b
    end
    s
  end

  def self.fibonacci(m)
  end
end

class TestEuler < Test::Unit::TestCase
  def testing_euler
    assert_equal(4613732, Euler.run(4000000))
  end
end