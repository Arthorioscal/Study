class Cliente
  attr_accessor :nome, :sobrenome, :cpf, :telefone

  def initialize(nome, sobrenome, cpf, telefone)
    @nome = nome
    @sobrenome = sobrenome
    @cpf = cpf
    @telefone = telefone
  end
end
