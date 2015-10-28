require 'test/unit'
require 'lib/fracciones'

class TestFracciones < Test::Unit::TestCase
    def setup
        @f1 = Fracciones.new(2,8)
        @f2 = Fracciones.new(6,4)
        @f3 = Fracciones.new(3,4)
        @f4 = Fracciones.new(1,8)
    end
    
    def test_suma
        
        assert_equal("7/4",(@f1 + @f2).to_s)
        assert_equal("7/8",(@f3 + @f4).to_s)
        assert_equal("13/8",(@f2 + @f4).to_s)
    end
    
    def test_resta
        assert_equal("-5/4",(@f1 - @f2).to_s)
        assert_equal("5/8",(@f3 - @f4).to_s)
        assert_equal("-1/8",(@f4 - @f1).to_s)
    end
    
    def test_multiplicacion
        assert_equal("3/8",(@f1 * @f2).to_s)
        assert_equal("9/8",(@f2 * @f3).to_s)
    end
    
    def test_division
        assert_equal("1/6",(@f1 / @f2).to_s)
        assert_equal("3/1",(@f3 / @f1).to_s)
    end
    
    def test_resto
        assert_equal("1/4",(@f1 % @f2).to_s)
        assert_equal("1/8",(@f4 % @f2).to_s)
    end
end