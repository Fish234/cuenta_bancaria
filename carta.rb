class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        if !(1..13).include?(numero)
            raise ArgumentError, 'Error, no cumple con los requisitos'
        end
        if !['C','D','E','T'].include?(pinta)
            raise ArgumentError, "Error, no cumple con los requisitos"
        end
        @numero = numero
        @pinta = pinta
    end
    def self.numero
        Random.rand(1..13)
    end
    def self.pinta
        ['C','D','E','T'].sample
    end
end

array = []
5.times do
    pinta1 = Carta.pinta
    numero1 = Carta.numero
    array.push Carta.new(numero1, pinta1)
end
print array

# 🡣🡣🡣🡣🡣 Bienvenido al cementerio de codigo :D 🡣🡣🡣🡣  


#5.times do |carta|
#    pinta1= Carta.pinta
#    numero1 = Carta.numero
#    c1 = Carta.new(numero1, pinta1)
#    print "\t"
#    print  c1.numero 
#    print c1.pinta 
#end

#class Carta
#    attr_accessor :numero, #:pinta
#    def initialize(numero , #pinta)
#        @numero = numero
#        @pinta = pinta#[Corazon:'C', #Diamante:'D' , #Espada: 'E', #Trebol:'T']
#    end
#end
#
#c1 = Carta.new(2,3)
#puts c1.numero



#cart = Carta.new(1,'C')
#puts cart.pinta.sample
#puts cart.numero

#5.times do |carta|
#    cart = Carta.new(1)
#    num = Carta.new(3)
#    print "\t"
#    print cart.pinta.sample
#    print num.numero
#end
