require_relative 'cliente'

class Conta
  attr_reader :numero, :titular
  attr_accessor :saldo

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

  def sacar(valor)
    if @saldo >= valor
      @saldo -= valor
    else
      puts "O saldo não é suficiente."
    end
  end

  def depositar(valor)
    @saldo += valor
  end

  def transferir(conta_destino, valor)
    if self.sacar(valor)
      conta_destino.depositar(valor)
    else
      "Não há saldo suficiente para realizar o depósito."
    end
  end
end
