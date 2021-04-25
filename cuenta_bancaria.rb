class CuentaBancaria
    attr_accessor :nombre_de_usuario
    attr_reader :nro_cuenta, :vip
  
    def initialize(nombre_de_usuario,nro_cuenta, vip = 0)
      @nombre_de_usuario = nombre_de_usuario
      @vip = vip
      
      if nro_cuenta.digits.count != 8
        raise RangeError.new('El N° de cuenta debe tener 8 digitos')  
      else
      @nro_cuenta = nro_cuenta
      end
    end
  
    def numero_de_cuenta
        "#{vip}-#{self.nro_cuenta}"
    end
end

cuenta1= CuentaBancaria.new('miguel', 11111111, 0)
puts cuenta1.numero_de_cuenta

cuenta2= CuentaBancaria.new('miguel', 22222222, 1)
puts cuenta2.numero_de_cuenta
 
cuenta3= CuentaBancaria.new('miguel', 33333333)
puts cuenta3.numero_de_cuenta

cuenta4= CuentaBancaria.new('miguel', 33)
puts cuenta4.numero_de_cuenta
