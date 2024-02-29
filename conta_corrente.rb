require_relative 'conta'

class ContaCorrente < Conta
  attr_accessor :limite
  def initialize(numero, titular, saldo, limite)
    super(numero, titular, saldo)
    @limite = limite
  end

  def sacar(valor)
    if @saldo >= valor
        @saldo -= valor
    elsif (@saldo + @limite) >= valor
        valor2 = (valor - @saldo)
        @limite -= valor2
        @saldo = 0
    else
      puts "Não foi possível efetuar o saque."
    end
  end
end
