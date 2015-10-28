class Fracciones
   attr_reader :num, :den
   
   def initialize(num,den)
       raise TypeError, "EL denominador no puede ser cero" if den.eql? 0
       aux=mcd(num,den)
       @num=num/aux
       @den=den/aux
    end
    
    def mcd(x,y)
        y == 0 ? x: mcd(y, x%y)
    end
    
    def mcm(x,y)
        z = x / mcd(x,y) * y
    end
    
    def to_s
        "#@num/#@den"
    end
    
    def == (nuevo)
        @num == nuevo.num && @den == nuevo.den
    end    
   
	def abs
	  Fracciones.new(@num.abs, @den)
	end

	def inverso
	  Fracciones.new(@den, @num)
	end   
	
	def -@
	    Fracciones.new(-@num,@den)
	 end
	
    #Operaciones aritmeticas
    def +(nuevo)
        m = mcm(@den, nuevo.den)
        na = @num * m / @den
        nb = nuevo.num * m / nuevo.den
        Fracciones.new(na + nb,m)
    end
    
    def -(nuevo)
        self + (-nuevo)
    end
    
    def *(nuevo)
        Fracciones.new(@num * nuevo.num, @den * nuevo.den)
    end
    
    def /(nuevo)
        self * nuevo.inverso
    end
    
    def %(nuevo)
        dividendo = @num * nuevo.den
	    divisor = @den * nuevo.num 
	    cociente = dividendo/divisor 
	    Fracciones.new( dividendo - cociente * divisor, @den * nuevo.den)
    end
    #Fin operaciones aritmeticas
    
    def <(nuevo)
	  (@num * nuevo.den) < (@den * nuevo.num) 
	end

	def >(nuevo)
	  (@num * nuevo.den) > (@den * nuevo.num) 
	end

	def <=(nuevo)
	  (@num * nuevo.den) <= (@den * nuevo.num) 
	end

	def >=(nuevo)
	  (@num * nuevo.den) >= (@den * nuevo.num) 
	end
end