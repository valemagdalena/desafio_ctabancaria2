class Usuario
    def initialize(nombre, cuentas)
        raise TypeError , "debe tener al menos una cuenta" if cuentas.count < 1
        @nombre = nombre
        @cuentas = cuentas
    end
    def saldo_total
        total = 0
        @cuentas.each do |cuenta|
        total += cuenta.saldo
        end
        total
    end
end

class CuentaBancaria
    attr_accessor :saldo
    def initialize(nombre, numero_cuenta, saldo = 0)
        @nombre = nombre
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_destino)
        raise TypeError , "no cuenta con el saldo" if monto > saldo
        @saldo -= monto
        cuenta_destino.saldo += monto
    end
end

cuenta1 = CuentaBancaria.new('Bco Chile', '123456')
cuenta2 = CuentaBancaria.new('Bco Santander', '123457', 5000)
cuenta3 = CuentaBancaria.new('Bco BCI', '1234578', 5000)
cuenta4 = CuentaBancaria.new('Bco BCI', '123458', 15000)

puts cuenta2.saldo
puts cuenta3.saldo
print cuenta2.transferir(5000, cuenta3)
puts ' desp de transferencias'
puts cuenta2.saldo
puts cuenta3.saldo

usuario1 = Usuario.new('valentina', [cuenta1, cuenta2, cuenta3])
usuario2 = Usuario.new('sixto', [cuenta4])

puts usuario1.saldo_total