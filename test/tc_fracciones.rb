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
        
        assert_equal((@f1 + @f2).to_s)
        assert_equal((@f3 + @f4).to_s)
        assert_equal((@f2 + @f4).to_s)
    end
    
    def test_resta
        assert_equal((@f1 - @f2).to_s)
        assert_equal((@f3 - @f4).to_s)
        assert_equal((@f4 - @f1).to_s)
    end
    
    def test_multiplicacion
        assert_equal((@f1 * @f2).to_s)
        assert_equal((@f2 * @f3).to_s)
    end
    
    def test_division
        assert_equal((@f1 / @f2).to_s)
        assert_equal((@f3 / @f1).to_s)
    end
    
    def test_resto
        assert_equal((@f1 % @f2).to_s)
        assert_equal((@f4 % @f2).to_s)
    end
end