require "test/unit"

# Project Euler - Problem 4 #
class Euler
  def self.run
    c=0
    999.downto(100) do |a|
      if a*a<c
        break
      end
      a.downto(100) do|b|
        x=a*b
        y=x.to_s
        if y==y.reverse
          if x>c
            c=x
            break
          end
        end
      end
    end
    c
  end
end

class TestEuler < Test::Unit::TestCase
  def testing_euler
    assert_equal(906609, Euler.run())
  end
end