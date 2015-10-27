class Fracciones
   attr_reader :num, :denom
   
   def initialize(num,denom)
       raise TypeError, "Denominator may not be zero" if denom.eql? 0
       d=gcd(num,denom)
       @num=num/d
       @denom=denom/d
    end
    
    def gcd(x,y)
        y == 0 ? x: gcd(y, x%y)
    end
    
    def lcm(x,y)
        z = x / gcd(x,y) * y
    end
    
    def to_s
        "#@num/#@denom"
    end
    
    def to_f
        @num/@denom
    end

    def == (other)
        @num == other.num && @denom == other.denom
    end    
   
	def abs
	  Fracciones.new(@num.abs, @denom)
	end

	def reciprocal
	  Fracciones.new(@denom, @num)
	end   
	
	def -@
	    Fracciones.new(-@num,@denom)
	 end
	
    #Operaciones aritmeticas
    def +(other)
        m = lcm(@denom, other.denom)
        na = @num * m / @denom
        nb = other.num * m / other.denom
        Fracciones.new(na + nb,m)
    end
    
    def -(other)
        self + (-other)
    end
    
    def *(other)
        Fracciones.new(@num * other.num, @denom * other.denom)
    end
    
    def /(other)
        self * other.reciprocal
    end
    
    def %(other)
        l = @num * other.denom
	    r = @denom * other.num 
	    n = l/r 
	    Fracciones.new( l - n * r, @denom * other.denom)
    end
    #Fin operaciones aritmeticas
    
    def <(other)
	  (@num * other.denom) < (@denom * other.num) 
	end

	def >(other)
	  (@num * other.denom) > (@denom * other.num) 
	end

	def <=(other)
	  (@num * other.denom) <= (@denom * other.num) 
	end

	def >=(other)
	  (@num * other.denom) >= (@denom * other.num) 
	end
end