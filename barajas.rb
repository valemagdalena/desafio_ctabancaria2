require 'carta'

class Barajas
    attr_accessor :cartas
    def initialize(cartas)
        pinta = ['C', 'D', 'E', 'T']
        @cartas = []
        pinta.each do |pinta|
            13.times do |i|
                ---
            end
        end
    end

    #Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle .
    def barajar
        @cartas.shuffle
    end

    # Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar .pop .
    def sacar
        @cartas.pop
    end

    # Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de la baraja.
    def repartir_mano
        array = []

        5.times do |i|
        array.push()
        end
    end

end

#no supe seguir haciendolo
