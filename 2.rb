module Formula
  def perimetro(lado1, lado2=lado1)
    lado1 * 2 + lado2 * 2
  end

  def area(lado1, lado2=lado1)
    lado1 * lado2
  end
end

class Rectangulo
  attr_accessor :largo, :ancho

  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts @lado
  end

end

class Cuadrado
  attr_accessor :lado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts @lado
  end
end

r = Rectangulo.new(5,6)
c = Cuadrado.new(5)


puts r.perimetro(r.largo, r.ancho)
puts r.area(r.largo, r.ancho)

puts c.perimetro(c.lado)
puts c.area(c.lado)
