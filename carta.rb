class Carta
    attr_reader :numero, :pinta

    def initialize(numero, pinta)

        pinta.upcase!

        pintas =['C', 'D', 'E', 'T']

        if (numero >= 1 && numero <=13) && pintas.include?(pinta)
            @numero = numero
            @pinta = pinta
        else
            raise ArgumentError.new(' No es un argumento valido')
        end
    end
end

pintas = ['C', 'D', 'E', 'T']

array_cartas=[]

5.times do |i|
    carta =Carta.new(Random.rand(1..13), pintas.sample)

    array_cartas +=[carta]
end

print array_cartas